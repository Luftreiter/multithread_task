#include "curl_utils.h"

#include <stdio.h>
#include <curl/curl.h>
/* For older cURL versions you will also need
#include <curl/types.h>
#include <curl/easy.h>
*/
#include <string>
#include <iostream>

#include <random>
#include <fstream>
#include <limits>

#include "program_handler.h"

void curl_utils::makeBigFloatFile(std::fstream *f)
{

    float max=std::numeric_limits<float>::max();

    std::random_device rd;     // only used once to initialise (seed) engine
    std::mt19937 rng(rd());    // random-number engine used (Mersenne-Twister in this case)
    std::uniform_real_distribution<float> uni(0, max); // guaranteed unbiased
    std::cout<<"size of float on your system: "<<sizeof (float)<<" bytes"<<std::endl;

    std::cout<<"saving test_data 100mb of raw floats..."<<std::endl;
    for (unsigned long long i=0;i<1e+8/(  (double)sizeof(float)  );++i)//1gb file create with random nums <1e+9
    {
        float key_ = uni(rng);

        f->write((char*)&key_,sizeof(key_));
    }
    std::cout<<"saving test_data done, copy it into server folder"<<std::endl;
}



//callback function - not in class definition
size_t write_data(void *ptr, size_t size, size_t nmemb, void *storage)
{
    //size_t written = fwrite(ptr, size, nmemb, stream);
    std::cout<<"received:"<< nmemb<<" bytes"<< std::endl;

    program_handler *temp_ptr=static_cast<program_handler *>(storage);

    unsigned long i;
    float *float_ptr=static_cast<float*>(ptr);

    //slow code here, todo:
    // std::copy from algorithm.h directly to vector
    // poidet i tak poka
    for (i=0;i<nmemb/sizeof (float);++i)
    {

        temp_ptr->data.push_back(*float_ptr);

        //std::cout<<"data:"<< *float_ptr <<" "<< std::endl;
        float_ptr++;
    }

    temp_ptr->logic2->run();
    temp_ptr->logic1->wait();





    return nmemb;
}


void curl_utils::run(std::string url,program_handler *storage)
{

    CURL *curl;
    //FILE *fp;
    CURLcode res;

    char outfilename[FILENAME_MAX] = "saved_data.bin";
    curl = curl_easy_init();
    if (curl)
    {
       // fp = fopen(outfilename,"wb");
        curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_data);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA,storage);

        res = curl_easy_perform(curl);
        /* always cleanup */
        curl_easy_cleanup(curl);
        //fclose(fp);
        storage->logic_main->run();

    }
}







//empty without curl init
curl_utils::curl_utils()
{


}