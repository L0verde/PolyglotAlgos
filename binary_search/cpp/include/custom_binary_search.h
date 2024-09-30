#ifndef CUSTOM_BINARY_SEARCH_H
#define CUSTOM_BINARY_SEARCH_H

#include <array>
template<typename T, std::size_t N>
int binarySearch(const std::array<T, N>& arr, T target){
    int low{0};
    int high{static_cast<int>(arr.size()) - 1};
    while (low <= high){
        int mittelpunkt{low + (high - low)/2}; //  mittelpunkt means middle point in German :)
        if (arr[mittelpunkt] == target)
        {
            return mittelpunkt;
        }
        else if(arr[mittelpunkt] > target)
        {
                high = mittelpunkt - 1; // imagine a physical book
            // right hand moves down
        }
        else
        {
         low = mittelpunkt + 1; // phsical book
        }
    }
    return -1;
}
#endif // CUSTOM_BINARY_SEARCH_IPP
