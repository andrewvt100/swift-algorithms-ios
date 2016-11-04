//
//  binarysearch.swift
//  swift-algorithms
//
//  Created by Andrew van Tonningen on 10/30/16.
//  Copyright © 2016 Andrew van Tonningen. All rights reserved.
//

// An iterative binary search.  Halves a sorted array repeatedly, checking to see if the middle of the
// current working array segment is equal to the target value.  If the middle is not equal to the target value,
// repeats the process until the working segment has a length of 1.  If the element in the segment of length
// 1 is not the target element, the search reports that the element is missing from the array.

func binarysearch(array:[Int], target:Int) -> Bool {
    var maxIndex:Int = array.count - 1 // Upper index of working array segment
    var minIndex:Int = 0 // Lower index of working array segment
    
    while(maxIndex >= minIndex) { // Guard against infinite iteration
        let newIndex:Int  = (maxIndex+minIndex) / 2 // Find element to split array at
        if (array[newIndex] > target) { // Choose the lower half of the array
            maxIndex = newIndex - 1
        }
        else if (array[newIndex] < target) { // Choose the upper half of the array
            minIndex = newIndex + 1
        }
        else if (array[newIndex] == target){ // Success condition
            return true;
        }
    }
    
    return false
}

// Function for testing purposes
func binarySearchDriver() {
    
    print("Binary Search!", terminator: "\n\n")
    let myArray:[Int] = [1,2,3,4,5]
    print(1)
    print(binarysearch(array: myArray, target: 1))
    print(2)
    print(binarysearch(array: myArray, target: 2))
    print(3)
    print(binarysearch(array: myArray, target: 3))
    print(4)
    print(binarysearch(array: myArray, target: 4))
    print(5)
    print(binarysearch(array: myArray, target: 5))
    print(6)
    print(binarysearch(array: myArray, target: 6))
    
}
