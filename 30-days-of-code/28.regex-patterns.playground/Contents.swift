import Foundation

func isValidEmail(_ email:String) -> Bool {
    let emailFormat = "[A-Z0-9a-z._%+-]+@gmail+\\.[A-Za-z]{2,64}"
    let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
    return emailPredicate.evaluate(with: email)
}

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var validEmails:[String] = []
for _ in 1...N {
    guard let firstNameEmailIDTemp = readLine() else { fatalError("Bad input") }
    let firstNameEmailID = firstNameEmailIDTemp.split(separator: " ").map{ String($0) }

    let firstName = firstNameEmailID[0]
    let emailID = firstNameEmailID[1]

    if isValidEmail(emailID) {
        validEmails.append(firstName)
    }
}

let sorted = validEmails.sorted()
for item in sorted {
    print(item)
}

