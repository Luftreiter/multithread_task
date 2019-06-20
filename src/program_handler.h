#ifndef PROGRAM_HANDLER_H
#define PROGRAM_HANDLER_H


#include "thr_logic.h"
#include <memory>
#include <vector>
class program_handler
{
public:
    program_handler();
    std::shared_ptr<thr_logic>logic_main;
    std::shared_ptr<thr_logic>logic1;
    std::shared_ptr<thr_logic>logic2;
    std::vector<float> data;
};

#endif // PROGRAM_HANDLER_H
