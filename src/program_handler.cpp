#include "program_handler.h"



program_handler::program_handler()
{
    this->logic1=std::make_shared<thr_logic>();
    this->logic2=std::make_shared<thr_logic>();
    this->logic_main=std::make_shared<thr_logic>();

}

