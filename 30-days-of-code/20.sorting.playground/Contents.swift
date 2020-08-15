import UIKit

func bubbleSort(_ a: inout [Int])->Int {
    var numberOfSwaps = 0
    let n = a.count
    for _ in 0..<n {
        // Track number of elements swapped during a single array traversal
        
        for j in 0..<n-1 {
            // Swap adjacent elements if they are in decreasing order
            if (a[j] > a[j + 1]) {
                a.swapAt(j, j+1)
                numberOfSwaps+=1
            }
        }
        // If no elements were swapped during a traversal, array is sorted
        if (numberOfSwaps == 0) {
            return 0
        }
    }
    return numberOfSwaps
}

//Test case #0
var a = [3,2,1]
print("Array is sorted in \(bubbleSort(&a)) swaps.")
print("First Element: \(a[0])")
print("Last Element: \(a[a.count-1])")
//Expected Output
//Array is sorted in 3 swaps.
//First Element: 1
//Last Element: 3
