#pragma once

#include <string>

namespace lib1 {

inline const std::string& getString()
{
    static const std::string str { "Hello from lib1!" };

    return str;
}

inline int getInt()
{
    return 12;
}

} // namespace lib1