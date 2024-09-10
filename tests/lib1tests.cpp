#include <gtest/gtest.h>

#include "lib1/lib1.h"

TEST(Lib1Tests, GetInt)
{
    EXPECT_EQ(lib1::getInt(), 12);
}