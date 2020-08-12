import Foundation

// Class Person
class Person {
    private let firstName: String
    private let lastName: String
    private let id: Int

    // Initializer
    init(firstName: String, lastName: String, id: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
    }

    // Print person data
    func printPerson() {
        print("Name: \(lastName), \(firstName)")
        print("ID: \(id)")
    }
} // End of class Person

// Class Student
class Student: Person {
    var testScores: [Int]

    /*
    *   Initializer
    *
    *   Parameters:
    *   firstName - A string denoting the Person's first name.
    *   lastName - A string denoting the Person's last name.
    *   id - An integer denoting the Person's ID number.
    *   scores - An array of integers denoting the Person's test scores.
    */
    // Write your initializer here
    init(firstName: String, lastName: String, id: Int, scores:[Int]) {
        self.testScores = scores
        super.init(firstName: firstName, lastName: lastName, id: id)
    }

    /*
    *   Method Name: calculate
    *   Return: A character denoting the grade.
    */
    // Write your method here
    func calculate() -> Character {
                let sum = testScores.reduce(0, +)
        let average = sum / testScores.count
        if average >= 90 && average <= 100  {
            return "O"
        }
        else if average >= 80 && average < 90  {
            return "E"
        }
        else if average >= 70 && average < 80  {
            return "A"
        }
        else if average >= 55 && average < 70  {
            return "P"
        }
        else if average >= 40 && average < 55  {
            return "D"
        }
        else {
            return "T"
        }
    }
} // End of class Student

//Test case #0
let student = Student(firstName: "Heraldo", lastName: "Memelli", id: 8135627, scores: [100, 80])
student.printPerson()
print("Grade: \(student.calculate())")

//Expected Output
//Name: Memelli, Heraldo
//ID: 8135627
//Grade: O
