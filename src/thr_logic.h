#ifndef THR_LOGIC_H
#define THR_LOGIC_H

#include <thread>
#include <mutex>
#include <condition_variable>
#include <atomic>



class thr_logic
{
public:
    thr_logic();
    void wait();


    void run();

    //threads stop logic
    std::atomic<bool> is_thread_ready;
    std::condition_variable condition_v;
    std::mutex mtx;

};

#endif // THR_LOGIC_H
