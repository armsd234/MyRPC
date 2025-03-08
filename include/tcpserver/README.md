# 高性能WEB服务器

## 项目介绍

本项目是一个高性能的WEB服务器，使用C++实现，项目底层采用了muduo库核心的设计思想，多线程多Reactor的网络模型，并且在这基础上增加了内存池，高效的双缓冲异步日志系统。

## 开发环境

* linux kernel version5.15.0-113-generic (ubuntu 22.04.6)
* gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
* cmake version 3.22

## 目录结构

```shell
kama-webserver/
├── img/ #存放图片
├── include/ #所有头文件.h位置
├── lib/ #存放共享库
|
├── log/ # 日志管理模块
│ ├── log.cc # 日志实现
├── memory/ # 内存管理模块
│ ├── memory.cc # 内存管理实现
├── src/ # 源代码目录
│ ├── main.cpp # 主程序入口
│ ├── ... # 其他源文件 
|
├── CMakeLists.txt # CMake 构建文件
├── LICENSE # 许可证文件
└── README.md # 项目说明文件
```

## 功能模块划分

### 网络模块

- **事件轮询与分发模块**：`EventLoop.*`、`Channel.*`、`Poller.*`、`EPollPoller.*`负责事件轮询检测，并实现事件分发处理。`EventLoop`对`Poller`进行轮询，`Poller`底层由`EPollPoller`实现。
- **线程与事件绑定模块**：`Thread.*`、`EventLoopThread.*`、`EventLoopThreadPool.*`绑定线程与事件循环，完成`one loop per thread`模型。
- **网络连接模块**：`TcpServer.*`、`TcpConnection.*`、`Acceptor.*`、`Socket.*`实现`mainloop`对网络连接的响应，并分发到各`subloop`。
- **缓冲区模块**：`Buffer.*`提供自动扩容缓冲区，保证数据有序到达。

### 日志模块

- 日志模块负责记录服务器运行过程中的重要信息，帮助开发者进行调试和性能分析。日志文件存放位于 `bin/logs/` 目录下。

### 内存管理

- 内存管理模块负责动态内存的分配和释放，确保服务器在高负载情况下的稳定性和性能。

