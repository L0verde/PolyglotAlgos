#include <gtest/gtest.h>
#include "../include/custom_binary_search.h"

TEST(BinarySearchTest, TargetPresent) {
    constexpr std::size_t SIZE{5};
    std::array<int, SIZE> arr{2, 3, 5, 7, 11};
    EXPECT_EQ(binarySearch(arr, 2), 0);
    EXPECT_EQ(binarySearch(arr, 3), 1);
    EXPECT_EQ(binarySearch(arr, 5), 2);
    EXPECT_EQ(binarySearch(arr, 7), 3);
    EXPECT_EQ(binarySearch(arr, 11), 4);
}

TEST(BinarySearchTest, TargetAbsent){
    constexpr std::size_t SIZE{5};
    std::array<int,SIZE> arr{2, 4, 6, 8, 10};
    EXPECT_EQ(binarySearch(arr, 3), -1);
}

TEST(BinarySearchTest, EmptyArray){
    constexpr std::size_t SIZE{0};
    std::array<int,SIZE> arr{};
    EXPECT_EQ(binarySearch(arr, 1), -1);
}

TEST(BinarySearchTest, SingleElementArray) {
    constexpr std::size_t SIZE{1};
    std::array<int,SIZE> arr{5};
    EXPECT_EQ(binarySearch(arr, 5), 0);
}

TEST(BinarySearchTest, NegativeNumbers){
    constexpr std::size_t SIZE{10};
    std::array<int,SIZE> arr{-9, -7, -3, -1, 0, 1, 3, 5, 7, 9};
    EXPECT_EQ(binarySearch(arr, -3), 2);
    EXPECT_EQ(binarySearch(arr, 0), 4);
}

TEST(BinarySearchTest, TargetAtBounds){
    constexpr std::size_t SIZE{5};
    std::array<int,SIZE> arr{1,2,3,4,5};
    EXPECT_EQ(binarySearch(arr, 1), 0);
    EXPECT_EQ(binarySearch(arr, 5), 4);
}

int main(int argc, char **argv){
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
