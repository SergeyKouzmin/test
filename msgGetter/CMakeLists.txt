cmake_minimum_required(VERSION 2.8)

set(project_name "RabbitMQ server")
project(${project_name})

cmake_policy(SET CMP0015 OLD)

set(amqpcpp_dir ../../rabbitmq/amqpcpp)
set(amqpcpp_lib_dir ${amqpcpp_dir})

set (
    sender_sources

    sender.cpp
)

set (
    receiver_sources
    
    receiver.cpp
)

set (
    receiver2_sources
    
    receiver2.cpp
)

add_executable(sender ${sender_sources})
add_executable(receiver ${receiver_sources})
add_executable(receiver2 ${receiver2_sources})

add_library(amqpcpp STATIC IMPORTED)
set_property(TARGET amqpcpp  PROPERTY IMPORTED_LOCATION ${amqpcpp_lib_dir}/libamqpcpp.a)

add_library(rabbitmq STATIC IMPORTED)
set_property(TARGET rabbitmq  PROPERTY IMPORTED_LOCATION ./librabbitmq.a)

set (
    amqpcpp_lib
    
    amqpcpp
    rabbitmq
)

include_directories(${amqpcpp_dir}/include)

target_link_libraries(sender ${amqpcpp_lib})
target_link_libraries(receiver ${amqpcpp_lib})
target_link_libraries(receiver2 ${amqpcpp_lib})

