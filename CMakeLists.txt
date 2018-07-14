cmake_minimum_required(VERSION 2.8)
project(testGrpc)

add_compile_options(-std=c++11)
if(UNIX AND NOT APPLE)
    set(CMAKE_EXE_LINKER_FLAGS "-pthread")
endif(UNIX AND NOT APPLE)

# CMAKE_MODULE_PATH
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules/")

# FFmpeg libraries
if(UNIX AND APPLE)
    find_package(FFmpeg REQUIRED COMPONENTS
            avcodec avfilter avdevice avutil swscale avformat swresample)
    include_directories(${FFMPEG_INCLUDE_DIRS})
elseif(UNIX AND NOT APPLE)
    find_package(PkgConfig)
    pkg_check_modules(FFmpeg REQUIRED
            libavdevice
            libavformat
            libavfilter
            libavcodec
            libswresample
            libswscale
            libavutil)
    message(${FFmpeg_LIBRARIES})
    include_directories(${FFmpeg_INCLUDE_DIRS})
    link_directories(${FFmpeg_LIBRARY_DIRS})
endif(UNIX AND APPLE)

# GRPC and Protocol Buffers libraries
list(APPEND CMAKE_PREFIX_PATH "/opt/grpc" "/opt/protobuf")
find_package(Protobuf REQUIRED)
find_package(GRPC REQUIRED)

# auto make *.proto file
set(PROTOS ${CMAKE_CURRENT_SOURCE_DIR}/test.proto)
set(PROTO_SRC_DIR ${CMAKE_CURRENT_BINARY_DIR}/proto-src)
file(MAKE_DIRECTORY ${PROTO_SRC_DIR})
include_directories(${PROTO_SRC_DIR})
protobuf_generate_cpp(PROTO_SRCS PROTO_HDRS ${PROTO_SRC_DIR} ${PROTOS})
grpc_generate_cpp(GRPC_SRCS GRPC_HDRS ${PROTO_SRC_DIR} ${PROTOS})

set     (HEADERS
        )

set     (SOURCES
        main.cpp
        )

# Building live-analysis server

add_executable(${PROJECT_NAME}
        ${HEADERS}
        ${SOURCES}
        ${PROTO_SRCS}
        ${GRPC_SRCS})

if(UNIX AND APPLE)
    target_link_libraries(${PROJECT_NAME}
            ${FFMPEG_LIBRARIES}
            gRPC::grpc++_reflection
            protobuf::libprotobuf)
elseif(UNIX AND NOT APPLE)
    target_link_libraries(${PROJECT_NAME}
            ${FFmpeg_LIBRARIES}
            gRPC::grpc++_reflection
            protobuf::libprotobuf)
endif(UNIX AND APPLE)

# Building live-analysis server
#set(CLIENT_DEMO client_demo)
#
#add_executable(${CLIENT_DEMO}
#        ${CMAKE_CURRENT_SOURCE_DIR}/client-demo/client.cpp
#        ${PROTO_SRCS}
#        ${GRPC_SRCS})
#
#target_link_libraries (${CLIENT_DEMO}
#        gRPC::grpc++_reflection
#        protobuf::libprotobuf)