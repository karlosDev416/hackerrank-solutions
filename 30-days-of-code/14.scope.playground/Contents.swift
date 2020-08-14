import Foundation

class Difference {
    private var elements = [Int]()
    var maximumDifference: Int
    
    // Write your code here
    init(a:[Int]) {
        self.elements = a
        self.maximumDifference = 0
    }
    
    func computeDifference() {
        if  let max = self.elements.max(),
            let min = self.elements.min() {
            self.maximumDifference = abs(max - min)
        }
    }

}

//Test case #0
let d = Difference(a: [1,2,5])
d.computeDifference()
print(d.maximumDifference)
//Expected Output
//4

//Test case #1
let d1 = Difference(a: [8,19,3,2,7])
d1.computeDifference()
print(d1.maximumDifference)
//Expected Output
//17


