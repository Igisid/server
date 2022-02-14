cmake_minimum_required(VERSION 2.8.9)
project (client)


set (CMAKE_BINARY_DIR "./../../bin/client/")
set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
set (CMAKE_CXX_FLAGS "-g -w -O2 -pthread")

include_directories(../include)
include_directories(../../lib/include)

add_executable(client src/main.cpp
                        src/client.cpp
                           src/communication_unit.cpp
                                src/connection_handler.cpp
                                    src/io_unit.cpp)

target_link_libraries( client debug_helper)