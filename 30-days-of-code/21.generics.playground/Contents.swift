import Foundation

struct Printer<T> {
    /**
    *    Name: printArray
    *    Print each element of the generic array on a new line. Do not return anything.
    *    @param A generic array
    **/
    
    // Write your code here
    func printArray(array:[T]) {
        for item in array {
            print(item)
        }
    }
}

//Test case #0
let intArray = [1,2,3]
let stringArray = ["Hello","World"]
Printer<Int>().printArray(array: intArray)
Printer<String>().printArray(array: stringArray)
//Expected Output
//1
//2
//3
//Hello
//World


