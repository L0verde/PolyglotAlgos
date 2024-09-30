# Binary Search Psuedo Code
This is psuedo code that I'm writing for the base logic for all of the different languages.

## How to think about it
Need to keep track of 
* low end of the array during the iteration 
* hight end of the array whille iterating 
low is at the beginning of the array at the start, i.e. low = 0
high is the last possible position in the array, i.e. high = size(array) - 1

The star of the show in the binary search is the middle value inbetween high and low. 
When you are searching for a specific point in a book, you make a guess as to where the closest point to 
the page could be and open up close to there. 
If you guess, wrong, which you probably will, you'll need to make a choice.
1. If the pages in the book you've opened up to are greater than your target page then
    1. Your new high is now the mid point (in this case the left mid point because your looking at a physical book...)
        1a. This is like saying high is now (mid - 1)
    2. Your low stays the same 
    3. pick a new middle again
2. If the pages that you've opened up to are less than the target page then
    1. Your new low is now at the mid point (the page on the right)
        1a. Like saying low is now (mid + 1)
    2. Your high here stays the same
    3. open up to the middle of those pages
In the case of looking for a book page you will 100% find the page you're looking for, but what about in the case 
    of something else. Maybe a list of alphabetically ordered names. When do you stop?

## Psuedo Code
```cpp kinda
function binarySearch(int target, int arr[]):
    low = 0 // i.e. start of array
    high = size(array) - 1 // i.e. the end of the arrray
    while (low < high):
        // mittelpunkt = (high - low) / 2 //mittlepunkt means midpoint in German
        // handle buffer overflow
        mittelpunkt = low + (right - low) / 2
        if array[mittelpunkt] == target :
            return mittelpunkt
        otherwise if array[mittelpunkt] > target:
            high = mid - 1 // think of pages in a book
        if both of the above fail:
            low = mid + 1 // visualize the book
    return Null // Everything failed here. 
```
