#include "thr_logic.h"

thr_logic::thr_logic()
{

}

void thr_logic::wait()
{

    is_thread_ready=false;
    std::unique_lock<std::mutex > lck(mtx);
    while(!is_thread_ready)
    {
        condition_v.wait(lck );
    }
}

void thr_logic::run()
{

        is_thread_ready=true;
        condition_v.notify_one();
}
