#include "header.h"
#include "lib1/lib1.h"

#include <iostream>

int main()
{
    std::cout << "Hello, world!\n";
    std::cout << "func() from header.h: " << func() << '\n';
    std::cout << lib1::getString() << '\n';

    return 0;
}
