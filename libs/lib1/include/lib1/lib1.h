#pragma once

#include <string>

namespace lib1
{
    const std::string& getString(){
        static const std::string str {"Hello from lib1!"};

        return str;
    }
}