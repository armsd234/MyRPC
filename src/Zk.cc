#include "Zk.h"
#include <iostream>
#include <thread>
#include <chrono>

void Zkclient::global_watcher(zhandle_t* zh, int type, int state, const char* path, void* context) {
    if(context){
        Zkclient* client = static_cast<Zkclient*>(context);
        //std::cout<< (zh == client->zkhandle) <<std::endl;
        if (type == ZOO_SESSION_EVENT) {
            if (state == ZOO_CONNECTED_STATE) {
                std::unique_lock<std::mutex> lock(client->cv_mutex);
                client->is_connected = true;
                client->cv.notify_all();
            }else if (state == ZOO_EXPIRED_SESSION_STATE) {
                client->is_connected = false;
                zookeeper_close(client->zkhandle);
                client->zkhandle = zookeeper_init("127.0.0.1:2181", global_watcher, 6000, 0, nullptr, 0);
            }
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
    zkhandle = zookeeper_init(host.c_str(), global_watcher, 6000, 0, this, 0);
    if (zkhandle == nullptr) {
        std::cout << "zookeeper_init error!";
        exit(EXIT_FAILURE);
    }
    std::unique_lock<std::mutex> lock(cv_mutex);
    cv.wait(lock,[this]{return is_connected;});
    //std::cout << "---------------------zookeeper_init success!-------------------";
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

// std::string Zkclient::getData(const char *path) {
    
//     int flag = zoo_exists(zkhandle, path, 0, NULL);
//     if (ZNONODE == flag) {
//         return "";
//     }
//     char buffer[64];
//     int datalen = 0;
//     flag = zoo_get(zkhandle, path, 0, buffer, &datalen, NULL);
//     if (flag != ZOK) {
//         std::cout << "get znode error..." << path;
//         return "";
//     }
//     return buffer;
// }

std::string Zkclient::getData(const char* path) {
    int retryCount = 3;
    while (retryCount-- > 0) {
        int flag = zoo_exists(zkhandle, path, 0, NULL);
        if (flag == ZOK) {
            char buffer[64] = {0};
            int bufferLen = sizeof(buffer);
            flag = zoo_get(zkhandle, path, 0, buffer, &bufferLen, NULL);
            // int ret  = zoo_get_children(zkhandle, path);
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
void Zkclient::setNolog(){
    zoo_set_debug_level(ZOO_LOG_LEVEL_ERROR);
}
