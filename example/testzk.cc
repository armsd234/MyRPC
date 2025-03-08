#include <zookeeper/zookeeper.h>
#include <condition_variable>
#include <string>
#include <iostream>
#include <thread>
#include <chrono>


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

};


void Zkclient::global_watcher(zhandle_t* zh, int type, int state, const char* path, void* context) {
    Zkclient* client = static_cast<Zkclient*>(context);
    if (type == ZOO_SESSION_EVENT) {
        if (state == ZOO_CONNECTED_STATE) {
            std::unique_lock<std::mutex> lock(client->cv_mutex);
            client->is_connected = true;
            client->cv.notify_all();
        }else if (state == ZOO_EXPIRED_SESSION_STATE) {
            client->is_connected = false;
            zookeeper_close(client->zkhandle);
            client->zkhandle = zookeeper_init("127.0.0.1:2181", global_watcher, 30000, 0, nullptr, 0);
        }
    }
}

Zkclient::Zkclient(std::string ip, int port) : zkhandle(nullptr), ip(ip), port(port), is_connected(false) {}

Zkclient::~Zkclient() {
    if (zkhandle != nullptr) {
        zookeeper_close(zkhandle);
    }
}

void Zkclient::start() {
    std::string host = ip + ":" + std::to_string(port);
    zkhandle = zookeeper_init(host.c_str(), global_watcher, 30000, 0, this, 0);
    if (zkhandle == nullptr) {
        std::cout << "zookeeper_init error!";
        exit(EXIT_FAILURE);
    }
    std::unique_lock<std::mutex> lock(cv_mutex);
    cv.wait(lock,[this]{return is_connected;});
    std::cout << "---------------------zookeeper_init success!-------------------";
}

void Zkclient::create(const char *path, const std::string *data, int state) {
    char path_buffer[128];
    int bufferlen = sizeof(path_buffer);
    // 检查节点是否存在，如果存在则不重复创建
    int flag = zoo_exists(zkhandle, path, 0, NULL);
    if (ZNONODE == flag) {
        // 创建指定path的znode节点
        int rc = zoo_create(zkhandle, path, data->c_str(), data->size(), &ZOO_OPEN_ACL_UNSAFE, state, path_buffer, bufferlen);
        if (rc != ZOK) {
            std::cout << "Failed to create node: " << zerror(rc) ;
        }
    }
}

std::string Zkclient::getData(const char* path) {
    int retryCount = 3;
    while (retryCount-- > 0) {
        int flag = zoo_exists(zkhandle, path, 0, NULL);
        if (flag == ZOK) {
            char buffer[64] = {0};
            int bufferLen = sizeof(buffer);
            flag = zoo_get(zkhandle, path, 0, buffer, &bufferLen, NULL);
            if (flag == ZOK) {
                return std::string(buffer, bufferLen);
            }
        } else if (flag == ZCONNECTIONLOSS) {
            std::cerr << "Connection lost, retrying..." << std::endl;
            std::this_thread::sleep_for(std::chrono::seconds(1));
            continue;
        }
        break;
    }
    return "";
}

int main() {
    Zkclient zk("127.0.0.1", 2181);
    zoo_set_debug_level(ZOO_LOG_LEVEL_DEBUG); // 启用调试日志
    zk.start();
    std::string data("123456");
    zk.create("/test", &data, 0);
    std::cout << zk.getData("/UserServiceRpc/Login") << std::endl;
}