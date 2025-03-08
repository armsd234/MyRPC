#ifndef _zookeeperutil_h_
#define _zookeeperutil_h_
#include <zookeeper/zookeeper.h>
#include <condition_variable>
#include <string>
#include <vector>


class Zkclient {
private:
    zhandle_t *zkhandle;
    std::string ip;
    int port;
    std::condition_variable cv;
    std::mutex cv_mutex;
    bool is_connected;
    static void global_watcher(zhandle_t* zh, int type, int state, const char* path, void* context);
public:
    Zkclient() = default;
    Zkclient(std::string ip, int port);
    ~Zkclient();
    void start();
    void create(const char *path, const std::string *data, int state = 0);
    std::string getData(const char *path);
    static void setNolog();

};


class ZookeeperClient {
public:
    ZookeeperClient(const std::string& zk_host, const std::string& service_path)
        : zk_host_(zk_host), service_path_(service_path) {
        // 初始化Zookeeper连接
        zk_handle_ = zookeeper_init(zk_host_.c_str(), WatcherCallback, 30000, nullptr, this, 0);
        if (!zk_handle_) {
            throw std::runtime_error("Failed to connect to Zookeeper");
        }
        // 初始化服务列表
        RefreshServiceList();
    }

    ~ZookeeperClient() {
        if (zk_handle_) {
            zookeeper_close(zk_handle_);
        }
    }

    // 获取当前可用的服务列表
    std::vector<std::string> GetServiceList() {
        std::lock_guard<std::mutex> lock(service_list_mutex_);
        return service_list_;
    }

private:
    // Zookeeper连接句柄
    zhandle_t* zk_handle_;

    // Zookeeper服务器地址
    std::string zk_host_;

    // 服务路径（如 /services/service_name）
    std::string service_path_;

    // 本地缓存的服务列表
    std::vector<std::string> service_list_;

    // 保护服务列表的互斥锁
    std::mutex service_list_mutex_;

    // Watcher回调函数
    static void WatcherCallback(zhandle_t* zh, int type, int state, const char* path, void* watcherCtx) {
        ZookeeperClient* client = static_cast<ZookeeperClient*>(watcherCtx);
        if (type == ZOO_CHILD_EVENT) {
            // 服务节点发生变化，刷新服务列表
            client->RefreshServiceList();
        }
    }

    // 刷新服务列表
    void RefreshServiceList() {
        String_vector children;
        int ret = zoo_get_children(zk_handle_, service_path_.c_str(), 1, &children);
        if (ret != ZOK) {
            std::cerr << "Failed to get children for path: " << service_path_ << std::endl;
            return;
        }

        // 更新本地缓存的服务列表
        std::vector<std::string> new_service_list;
        for (int i = 0; i < children.count; ++i) {
            std::string node_path = service_path_ + "/" + children.data[i];
            char buffer[1024];
            int buffer_len = sizeof(buffer);
            ret = zoo_get(zk_handle_, node_path.c_str(), 0, buffer, &buffer_len, nullptr);
            if (ret == ZOK) {
                new_service_list.push_back(std::string(buffer, buffer_len));
            }
        }

        // 更新服务列表
        {
            std::lock_guard<std::mutex> lock(service_list_mutex_);
            service_list_ = std::move(new_service_list);
        }

        // 打印更新后的服务列表
        std::cout << "Updated service list:" << std::endl;
        for (const auto& service : service_list_) {
            std::cout << service << std::endl;
        }
    }
};

#endif