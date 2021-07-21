#include <iostream>

#include "foo.h"

void print_hello() {
    std::cout << "Hello world!" << std::endl;

    #ifdef FOO_DEBUG
        std::cout << "Debug" << std::endl;
    #else
        std::cout << "Release" << std::endl;
    #endif
}