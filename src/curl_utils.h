#ifndef CURL_UTILS_H
#define CURL_UTILS_H

#include <fstream>
#include <vector>

#include "program_handler.h"
class curl_utils
{
public:
    curl_utils();
    void makeBigFloatFile(std::fstream *f);
    void run(std::string url,program_handler *pr);



};

#endif // CURL_UTILS_H
