import Foundation

func printEvenAndOdd(string: String) {
    var evenString = ""
    var oddString = ""
    for (index,c) in string.enumerated() {
        if index % 2 == 0 {
            evenString+="\(c)"
        } else {
            oddString+="\(c)"
        }
    }
    print("\(evenString) \(oddString)")
}

//Test case #0
let numStrings = ["Hacker", "rank"]
for inputString in numStrings {
    printEvenAndOdd(string: inputString)
}
//Expected Output
//Hce akr
//rn ak


