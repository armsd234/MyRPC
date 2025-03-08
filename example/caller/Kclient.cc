#include "../user.pb.h"
#include "Rpccontroller.h"
#include <iostream>
#include <atomic>
#include <thread>
#include <chrono>
#include "Rpcchannel.h"
void send_request(int thread_id, std::atomic<int> &success_count, std::atomic<int> &fail_count)
{

    // 演示用远程发布rpc方法Login
    Kuser::UserServiceRpc_Stub stub(new KrpcChannel("127.0.0.1",2181));

    // rpc方法请求参数
    Kuser::LoginRequest request;
    request.set_name("zhangsan");
    request.set_pwd("123456");

    // rpc方法响应参数
    Kuser::LoginResponse response;
    Krpccontroller controller;                             // 我们重写的Rpchannel继承google的rpc框架的rpcchannel,形成多态
    stub.Login(&controller, &request, &response, nullptr); // 父类Rpchannel->子类Rpchannle::callmethod
    // 一次rpc调用完成，读调用的结果
    if (controller.Failed())
    {
        std::cout << controller.ErrorText() << std::endl;
    }
    else
    {
        if (0 == response.result().errcode())
        {
            //std::cout << "rpc login response success:" << response.success() << std::endl;
            success_count++;
        }
        else
        {
            //std::cout << "rpc login response error : " << response.result().errmsg() << std::endl;
            fail_count++;
        }
    }
}

int main(int argc, char **argv)
{
    // 整个程序启动以后，想使用krpc框架就要先调用初始化函数(只初始化一次)
    
    const int thread_count = 200;      // 并发线程数
    const int requests_per_thread = 1000; // 每个线程发送的请求数

    std::vector<std::thread> threads;
    std::atomic<int> success_count(0);
    std::atomic<int> fail_count(0);
    Zkclient::setNolog();
    auto start_time = std::chrono::high_resolution_clock::now(); // 开始时间

    // for(int j=0;j<requests_per_thread;j++)
    // {
    //     send_request(0,success_count,fail_count);
    // } 
    // 启动多线程进行并发测试
    for (int i = 0; i < thread_count; i++)
    {
        threads.emplace_back([argc, argv, i, &success_count, &fail_count, requests_per_thread]()
                             {
        for(int j=0;j<requests_per_thread;j++)
        {
          send_request(i,success_count,fail_count);
        } });
    }
    for (auto &t : threads)
    {
        t.join();
    }
    auto end_time = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = end_time - start_time;

    // 输出统计结果
    std::cout << "Total requests: " << thread_count * requests_per_thread;
    std::cout << "Success count: " << success_count;
    std::cout << "Fail count: " << fail_count;
    std::cout << "Elapsed time: " << elapsed.count() << " seconds";
    std::cout << "QPS: " << (thread_count * requests_per_thread) / elapsed.count();
    return 0;
}
