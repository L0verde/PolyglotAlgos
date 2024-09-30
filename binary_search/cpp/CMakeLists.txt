cmake_minimum_required(VERSION 3.10)
project(CustomBinarySearch)

# Set C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Enable testing
enable_testing()

# Find Google Test
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

# Find SQLite3
find_package(SQLite3 REQUIRED)
include_directories(${SQLite3_INCLUDE_DIRS})

# Include directories
include_directories(
    ${PROJECT_SOURCE_DIR}/include
    ${GTEST_INCLUDE_DIRS}
    ${SQLite3_INCLUDE_DIRS}
)

# Source files
set(SOURCE_FILES
    src/read_arrays_from_db.cpp
    tests/binary_search_gTest.cpp
)

# Add executable
add_executable(test_binary_search ${SOURCE_FILES})

# Link libraries
target_link_libraries(test_binary_search ${GTEST_LIBRARIES} ${SQLite3_LIBRARIES} pthread)

# Add test
add_test(NAME BinarySearchTest COMMAND test_binary_search)

