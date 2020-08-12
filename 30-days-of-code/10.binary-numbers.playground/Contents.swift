import UIKit

func binaryNumbers(_ n:Int) -> Int {
    var sum = 0
    var temp = 0
    var number = n
    var remainder = 0

    while number > 0 {
        remainder = number%2
        number = number/2
        if remainder == 1 {
            sum+=1
            if sum >= temp {
                temp = sum
            }
        } else {
            sum=0
        }
    }
    return temp
}

//Test case #0
print(binaryNumbers(5))
//Expected Output
//1

//Test case #1
print(binaryNumbers(6))
//Expected Output
//2
