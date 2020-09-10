import UIKit

func calculateMax(_ k:Int,_ n:Int) -> Int {
    var max = 0
    for i in 1...n {
        for j in 1...n {
            guard j != i else { break }
            let value = (i & j)
            if value < k && value > max {
                max = value
            }
        }
    }
    return max
}

//Test case #0
let array = ["5 2", "8 5", "2 2"]
for item in array {
    let row = item.components(separatedBy: " ")
    let n = Int(row[0])!
    let k = Int(row[1])!
    print(calculateMax(k, n))
}
//Expected Output
//1
//4
//0



