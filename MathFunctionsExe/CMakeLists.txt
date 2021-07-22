cmake_minimum_required(VERSION 3.15)
project(mfexe VERSION 1)

# Interesting that it searches multiple locations under
# the prefix path... see search procedures
# https://cmake.org/cmake/help/latest/command/find_package.html#id5
# set(CMAKE_PREFIX_PATH "../MathFunctions/install")
# message(STATUS ${CMAKE_PREFIX_PATH})
find_package(MathFunctions REQUIRED)

# The old way without find_package
# SET(INSTALL_PREFIX ${CMAKE_CURRENT_SOURCE_DIR}/../MathFunctions/install)
# Although we only exported one target, including this file
# May import mulitple targets
# include(${INSTALL_PREFIX}/lib/cmake/MathFunctions/MathFunctionsTargets.cmake)

add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(mfexe PRIVATE MathFunctions::MathFunctions)