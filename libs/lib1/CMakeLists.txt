set(LIBRARY_NAME lib1 CACHE INTERNAL "Library name")
add_library(${LIBRARY_NAME} STATIC
   "src/lib.cpp"
   "include/lib1/lib1.h"
)

target_include_directories(${LIBRARY_NAME}
    PUBLIC include
    PRIVATE src include/lib1)

set_target_properties(${LIBRARY_NAME} PROPERTIES LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
target_compile_features(${LIBRARY_NAME} PUBLIC cxx_std_20)
if(MSVC)
  # Force to always compile with W4
  if(CMAKE_CXX_FLAGS MATCHES "/W[0-4]")
    string(REGEX REPLACE "/W[0-4]" "/W4" CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
  else()
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4")
  endif()
elseif(CMAKE_COMPILER_IS_GNUCC OR CMAKE_COMPILER_IS_GNUCXX)
  # Update if necessary
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -pedantic")
endif()