// #pragma once
// #include <iostream>
// #include <memory>

// template<typename T, size_t Cap>
// class LockfreeQueue : private std::allocator<T>
// {
// public:
//     LockfreeQueue() :_max_size(Cap + 1),
//         _data(std::allocator<T>::allocate(_max_size))
//         , _head(0), _tail(0), _tail_update(0) {}

//     LockfreeQueue(const LockfreeQueue&) = delete;
//     LockfreeQueue& operator = (const LockfreeQueue&) volatile = delete;
//     LockfreeQueue& operator = (const LockfreeQueue&) = delete;

//     ~LockfreeQueue()
//     {
//         //调用内部元素的析构函数
//         while (_head != _tail) {
//             std::allocator<T>::destroy(_data + _head);
//             _head = (++_head)%_max_size;
//         }
//         //调用回收操作
//         std::allocator<T>::deallocate(_data, _max_size);
//     }

//     //出队函数
//     bool pop(T& val) {
//         size_t h;
//         do
//         {
//             h = _head.load(std::memory_order_relaxed);  //1 处
//             //判断头部和尾部指针是否重合，如果重合则队列为空
//             if (h == _tail.load(std::memory_order_acquire)) //2处
//             {
//                 std::cout << "circular que empty ! " << std::endl;
//                 return false;
//             }
//             //判断如果此时要读取的数据和tail_update是否一致，如果一致说明尾部数据未更新完
//             if (h == _tail_update.load(std::memory_order_acquire)) //3处
//             {
//                 return false;
//             }

//             val = _data[h]; 

//         } while (!_head.compare_exchange_strong(h,
//             (h + 1) % _max_size, std::memory_order_release, std::memory_order_relaxed)); //4 处
//         std::cout << "pop data success, data is " << val << std::endl;
//         return true;
//     }

//     bool push(const T& val)
//     {
//         size_t t;
//         do
//         {
//             t = _tail.load(std::memory_order_relaxed);  //1
//             //判断队列是否满
//             if ((t + 1) % _max_size == _head.load(std::memory_order_acquire)) // 2
//             {
//                 std::cout << "circular que full ! " << std::endl;
//                 return false;
//             }
//         } while (!_tail.compare_exchange_strong(t,
//             (t + 1) % _max_size, std::memory_order_release, std::memory_order_relaxed));  //3

//         _data[t] = val; 
//         size_t tailup;

//         do
//         {
//             tailup = t;
//         } while (_tail_update.compare_exchange_strong(tailup,
//             (tailup + 1) % _max_size, std::memory_order_release, std::memory_order_relaxed)); //4
//         std::cout << "called push data success " << val << std::endl;
//         return true;
//     }

// private:
//     T* _data;
//     std::atomic<size_t>  _head;
//     std::atomic<size_t> _tail;
//     std::atomic<size_t> _tail_update;
// };

#include <atomic>
#include <memory>

template <typename T>
class LockFreeQueue {
private:
    struct Node {
        T* data; // 数据
        std::atomic<Node*> next; // 下一个节点

        Node() : next(nullptr) {}
        explicit Node(T* value) : data(value), next(nullptr) {}
        
    };

    std::atomic<Node*> head; // 队列头
    std::atomic<Node*> tail; // 队列尾

public:
    LockFreeQueue() {
        Node* dummy = new Node(); // 哨兵节点
        head.store(dummy);
        tail.store(dummy);
    }

    ~LockFreeQueue() {
        while (Node* old_head = head.load()) {
            head.store(old_head->next);
            delete old_head;
        }
    }

    // 入队操作
    void enqueue(std::shared_ptr<T> value) {
        Node* new_node = new Node(value);
        Node* old_tail = tail.load();
        Node* null_ptr = nullptr;

        while (true) {
            Node* old_tail_next = old_tail->next.load();
            if (!old_tail_next) {
                // 尝试将新节点添加到队尾
                if (old_tail->next.compare_exchange_weak(null_ptr, new_node)) {
                    // 成功入队，更新尾指针
                    tail.compare_exchange_weak(old_tail, new_node);
                    break;
                }
            } else {
                // 帮助其他线程完成尾指针更新
                tail.compare_exchange_weak(old_tail, old_tail_next);
            }
            old_tail = tail.load();
        }
    }

    // 出队操作
    std::shared_ptr<T> dequeue() {
        Node* old_head = head.load();
        Node* old_tail = tail.load();
        Node* next_node = old_head->next.load();

        while (true) {
            if (old_head == old_tail) {
                // 队列为空
                if (!next_node) {
                    return nullptr;
                }
                // 帮助其他线程完成尾指针更新
                tail.compare_exchange_weak(old_tail, next_node);
            } else {
                // 尝试出队
                
                if (head.compare_exchange_weak(old_head, next_node)) {
                    std::shared_ptr<T> res = next_node->data;
                    delete old_head;
                    return res;
                }
            }
            old_head = head.load();
            old_tail = tail.load();
            next_node = old_head->next.load();
        }
    }
};