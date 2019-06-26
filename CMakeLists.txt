cmake_minimum_required(VERSION 2.8)

### project name as folder
get_filename_component(ProjectId ${CMAKE_CURRENT_SOURCE_DIR} NAME)
string(REPLACE " " "_" ProjectId ${ProjectId})
project(${ProjectId})
###

### place exebutable in build/bin folder
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
###




### add *.cpp
file(GLOB_RECURSE SRC src/*.cpp src/*.h)
###

### link external libs to project
#set(CURL_LIBRARY "-lcurl")
#use this if you in linux (first install it by sudo apt install libcurl or curl)
#find_package(CURL REQUIRED)
#else
#{
option(CMAKE_USE_OPENSSL OFF)
option(CURL_CA_PATH_SET OFF)
option(BUILD_TESTING OFF)
ADD_SUBDIRECTORY(3rd_party/curl)
#}


#set(Boost_USE_STATIC_LIBS OFF)
#set(Boost_USE_MULTITHREADED ON)
#set(Boost_USE_STATIC_RUNTIME OFF)
#find_package(Boost 1.60.0 COMPONENTS filesystem regex system)


#include_directories(${Boost_INCLUDE_DIRS})




include_directories(${PROJECT_SOURCE_DIR}/3rd_party/curl/include)
add_executable(${PROJECT_NAME} ${SRC})
#Boost::system Boost::filesystem Boost::regex
    target_link_libraries(${PROJECT_NAME}  libcurl  pthread)
