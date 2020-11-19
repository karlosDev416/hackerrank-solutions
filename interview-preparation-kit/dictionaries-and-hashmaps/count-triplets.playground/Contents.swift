import UIKit

func countTriplets(arr: [Int], r: Int) -> Int {
    var right:[Int:Int] = [:]
    for key in arr {
        if right[key] != nil {
            right[key]!+=1
        } else {
            right[key]=1
        }
    }
    var triplets = 0
    var left:[Int:Int] = [:]
    for key in arr {
        right[key]!-=1 //current
        let indexL = key/r
        let indexR = key*r
        if left[indexL] != nil && (key%r == 0) && right[indexR] != nil {
            triplets+=left[indexL]!*right[indexR]!
        }
        if left[key] != nil {
            left[key]!+=1
        } else {
            left[key]=1
        }
    }
    return triplets
}
//Test case #0
print(countTriplets(arr: [1,2,2,4], r: 2))
//Expected Output
//2 
