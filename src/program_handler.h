#ifndef PROGRAM_HANDLER_H
#define PROGRAM_HANDLER_H


#include "thr_logic.h"
#include <memory>
#include <vector>

#include <boost/circular_buffer.hpp>


struct pos
{


    pos(int start_index_, int end_index_)
   {
       start_index=start_index_;
       end_index=end_index_;
   }

    int start_index;
    int end_index;


};



class program_handler
{
public:
    program_handler();



    std::shared_ptr<thr_logic>logic_main;
    std::shared_ptr<thr_logic>logic1;
    std::shared_ptr<thr_logic>logic2;
    //  std::vector<float> data;

    boost::circular_buffer<float> data;
    struct pos *download_pos;
    struct pos *process_pos;
    std::mutex m;
};

#endif // PROGRAM_HANDLER_H
