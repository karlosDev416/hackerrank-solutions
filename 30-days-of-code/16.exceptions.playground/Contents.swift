import Foundation

/*
 * Define an ErrorType
 */
enum StringToIntTypecastingError: Error {
    case BadString
}

func stringToInt(inputString: String) throws -> Int {
    guard let integer = Int(inputString) else {
        throw StringToIntTypecastingError.BadString
    }
    return integer
}

//Test case #1
do {
    try stringToInt(inputString: "za")
} catch StringToIntTypecastingError.BadString {
    print("Bad string")
}
//Expected Output
//Bad string
