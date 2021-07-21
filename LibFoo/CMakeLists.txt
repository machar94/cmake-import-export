cmake_minimum_required(VERSION 3.15)
project(foo)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Check out foo.cpp to see how changing
# this to Release controls how the add_library
# is built
set(CMAKE_BUILD_TYPE Debug)

add_library(foo src/foo.cpp)

# Provides preprocessor defintions to the compiler
# Generator expression says if 
target_compile_definitions(foo PRIVATE
    $<$<CONFIG:Debug>:FOO_DEBUG>
)

target_include_directories(foo
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
#    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
#    $<INSTALL_INTERFACE:install>
)