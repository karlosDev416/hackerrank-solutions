import Foundation

let phoneBook = ["sam":99912222,
                 "tom":11122222,
                 "harry":12299933]

func findContact(input:String) {
    if let item = phoneBook[input] {
        print("\(input)=\(item)")
    } else {
        print("Not found")
    }
}

//Test case #0:
findContact(input: "sam")
findContact(input: "edward")
findContact(input: "harry")

//Expected Output
//sam=99912222
//Not found
//harry=12299933
