//
//  quicksort.swift
//  swift-algorithms
//
//  Created by Andrew van Tonningen on 10/30/16.
//  Copyright © 2016 Andrew van Tonningen. All rights reserved.
//


// The heart of my quicksort implementation.  Pivot element chosen as the rightmost element of the
// current working array segment.  As the function name reflects, this quicksort is recursive rather
// iterative.
// General Workflow Cycle:
// 1) If element at left index is >= pivot, decrement right index until an element <= pivot is found
// 2) When a match is found, swap the values at the indices
// 3) Increment left index, regardless of the truth value of the condition in step 1
// 4) Recurse when left index >= right index

func QuickSortRecursion(array:inout [Int], minIndex:Int, maxIndex:Int) {
    
    var indexLeft:Int  = minIndex // Tracks the left positional marker for quicksort
    var indexRight:Int = maxIndex // Tracks the right positional marker for quicksort
    
    let pivotValue:Int = array[maxIndex] // Pivot is rightmost element
    
    while (indexLeft <= indexRight) { // Step 4 (recursion condition)
        if (array[indexLeft] >= pivotValue) { // Step 1
            while(indexLeft <= indexRight) { // Step 2, swapping and decrementing indexRight occur below
                if (array[indexRight] <= pivotValue) {
                    let temp:Int = array[indexRight] // Temp declared for swapping purposes
                    array[indexRight] = array[indexLeft]
                    array[indexLeft] = temp
                    indexLeft+=1; // Step 3 option A
                    indexRight-=1;
                    break;
                }
                else {
                    indexRight-=1;
                }
            }
        }
        else {
            indexLeft+=1; // Step 3 option B
        }
    }
    
    if (indexRight > minIndex) { // If condition to guard against infinite recursion ...
        QuickSortRecursion(array: &array, minIndex: minIndex, maxIndex: indexRight)
    }
    
    if (indexLeft < maxIndex) { // If condition to guard against infinite recursion ...
        QuickSortRecursion(array: &array, minIndex: indexLeft, maxIndex: maxIndex)
    }
    
}

// This wrapper function calculates the minimum and maximum index of the ArrayList to
// increase usability.  Begins the recursion.
func QuickSort(array:inout[Int]) {
    QuickSortRecursion(array: &array, minIndex: 0, maxIndex: array.count - 1)
}


// Function for testing purposes
func quickSortDriver() {
    print("Quicksort!", terminator: "\n\n")
    var intArray = [10, 12, 13, 17, 6, 5, 15, 3, 1, 16]
    print("Pre-sorted values:")
    for index in intArray {
        print(index, terminator: " ")
    }
    print("\n")
    QuickSort(array: &intArray)
    print("Sorted values:")
    for index in intArray {
        print(index, terminator: " ")
    }
    print("\n")
}



