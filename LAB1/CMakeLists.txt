cmake_minimum_required(VERSION 3.20)
project(LAB1)

set(CMAKE_C_STANDARD 11)

include_directories(../common)

set(SRC_EXTRA ../common/sub.h ../common/sub.c)

set(MAIN_EXEC src/main.c ${SRC_EXTRA})
add_executable(${PROJECT_NAME}-main ${MAIN_EXEC})

set(SON_EXEC src/son.c ${SRC_EXTRA})
add_executable(${PROJECT_NAME}-son ${SON_EXEC})
