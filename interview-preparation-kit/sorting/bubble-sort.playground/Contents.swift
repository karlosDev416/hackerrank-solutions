import UIKit

func countSwaps(a: [Int]) -> Void {
    var array:[Int] = a
    var swaps = 0
    for _ in array {
        for j in 0..<array.count - 1 {
            if array[j] > array[j + 1] {
                array.swapAt(j, j+1)
                swaps += 1
            }
        }
    }
    print("Array is sorted in \(swaps) swaps.")
    print("First Element: \(array.first!)")
    print("Last Element: \(array.last!)")
}

//Test case #1
countSwaps(a: [3,2,1])
//Expected output
//Array is sorted in 3 swaps.
//First Element: 1
//Last Element: 3
