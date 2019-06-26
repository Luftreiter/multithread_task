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

#include <memory>

#include <algorithm>
#include "curl_utils.h"
//our data and thread logic
#include "program_handler.h"



void downloadData(std::shared_ptr<program_handler> pr,std::shared_ptr<curl_utils> c,std::string myurl)
{
    c->run(myurl,pr.get());
}

void processData(std::shared_ptr<program_handler> pr    )
{
    static unsigned long counter=0;
    while(true)
    {

        pr->m->lock();
        std::vector<float >temp_data= data;
        pr->m->unlock();


        if(!pr->data .empty())
        {
            double average=0;
            for (unsigned i=0;i<temp_data .size();++i)
            {
                average+=static_cast<double>(temp_data .at(i));

                std::cout<<"average:"<<average<<" of "<<counter<<"chunk data"<<std::endl;
            }
            average=average/static_cast<double>(100);
            counter++;

            pr->m->lock();
            pr->data .clear();
            pr->m->unlock();
        }


        if(pr->logic_main->is_thread_ready==true)
        {
            break;
        }

    }



}





int main(int argc ,char **argv)
{
    auto c=std::make_shared<curl_utils>();


    if(argc<2)
    {
        auto f =std::make_shared<std::fstream>();
        std::cout << "Usage: python server.py" << std::endl;
        std::cout << "Usage: senya.exe 127.0.0.1:8000/data.bin" << std::endl;
        f->open("data.bin",std::ios_base::out|std::ios::binary);
        std::fstream *f_pointer=f.operator->();
        c->makeBigFloatFile(f_pointer);
        return 0;
    }
    std::cout<<"size of float on your system: "<<sizeof (float)<<" bytes"<<std::endl;
    std::cout<<"starting 2 threads.. "<<std::endl;
    std::string myurl=argv[1];
    auto pr =std::make_shared<program_handler>();


    std::thread t1(downloadData,std::ref(pr),std::ref(c),std::ref(myurl));
    t1.detach();
    std::thread t2(processData,std::ref(pr));
    t2.detach();


    std::cout << "wait in main thread..." << std::endl;
    pr->logic_main->wait();

    std::cout << "program done computating" << std::endl;




    return 0;
}
