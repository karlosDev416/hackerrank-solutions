import UIKit

func isPrime(_ n: Int) -> String {
    if n < 2 { return "Not prime" }
    if n <= 3 { return "Prime" }
    
    for i in 2...Int(sqrt(Double(n))) {
        if n % i == 0 {
            return "Not prime"
        }
    }
    return "Prime"
}

//Test case #0
print(isPrime(12))
print(isPrime(5))
print(isPrime(7))

//Expected Output
//Not prime
//Prime
//Prime

