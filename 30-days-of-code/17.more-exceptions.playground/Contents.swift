import Foundation

// Defining enum for throwing error
// throw RangeError.NotInRange... is used to throw the error
enum RangeError : Error {
    case NotInRange(String)
}

// Start of class Calculator
class Calculator {
    // Start of function power
    func power(n: Int, p: Int) throws -> Int {
        if n<0 || p<0 {
            throw RangeError.NotInRange("n and p should be non-negative")
        }
        return Int(pow(Double(n), Double(p)))
    } // End of function power
} // End of class Calculator

//Test case #0
let myCalculator = Calculator()
let np = [[3,5], [2,4], [-1,-2], [-1,3]]
for item in np {
    
    let n = item[0]
    let p = item[1]

    do {
        let ans = try myCalculator.power(n: n, p: p)
        print(ans)
    } catch RangeError.NotInRange(let errorMsg) {
        print(errorMsg)
    }
}
//Expected Output
//243
//16
//n and p should be non-negative
//n and p should be non-negative

