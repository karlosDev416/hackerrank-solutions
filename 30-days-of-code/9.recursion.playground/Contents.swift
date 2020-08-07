import Foundation

func factorial(n: Int) -> Int {
    return n == 1 ? 1 : n*factorial(n: n-1)
}

//Test case #0:
let result = factorial(n: 3)
//Expected Output
//6
