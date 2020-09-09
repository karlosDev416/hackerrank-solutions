import UIKit


func calculateHackos(actualDate:String, expectedDate:String)->Int {
        
    let actualArray = actualDate.split(separator: " ")
    let actualDay = Int(actualArray[0])!
    let actualMonth = Int(actualArray[1])!
    let actualYear = Int(actualArray[2])!
    
    let expectedArray = expectedDate.split(separator: " ")
    let expectedDay = Int(expectedArray[0])!
    let expectedMonth = Int(expectedArray[1])!
    let expectedYear = Int(expectedArray[2])!
            
    if (actualYear > expectedYear) {
        return 10000
    } else if (actualYear == expectedYear) {
        if actualMonth > expectedMonth {
            return (500 * (actualMonth - expectedMonth))
        } else if actualMonth == expectedMonth && actualDay > expectedDay {
            return (15 * (actualDay - expectedDay))
        }
    }
    return 0
}

//Test case #0
let actualDate = "9 6 2015"
let expectedDate = "6 6 2015"
print(calculateHackos(actualDate: actualDate, expectedDate: expectedDate))
//Expected Output
//45

////Test case #8
//let actualDate = "24 12 1898"
//let expectedDate = "18 9 1898"
//print(calculateHackos(actualDate: actualDate, expectedDate: expectedDate))
//Expected Output
//1500

