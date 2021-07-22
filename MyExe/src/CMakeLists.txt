include(GNUInstallDirs)

add_library(bar bar.cpp)

target_include_directories(bar 
    PUBLIC 
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>)
