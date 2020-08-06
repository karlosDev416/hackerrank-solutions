import Foundation

class Person {
    
    private var age: Int = 0

    init(initialAge: Int) {
        // Add some more code to run some checks on initialAge
        if initialAge > 0 {
            self.age = initialAge
        } else {
            self.age = 0
            print("Age is not valid, setting age to 0.")
        }
        
    }

    func amIOld() {
        // Do some computations in here and print out the correct statement to the console
        if self.age < 13 {
            print("You are young.")
        } else if self.age >= 13 && self.age < 18 {
            print("You are a teenager.")
        } else {
            print("You are old.")
        }
    }

    func yearPasses() {
        // Increment the age of the person in here
        self.age += 1
    }
}

//Test case #1
let person = Person(initialAge: 4)
person.amIOld()
//Expected Output
//You are young.

//Test case #2
let person2 = Person(initialAge: -1)
//Expected Output
//Age is not valid, setting age to 0.

//Test case #3
let person3 = Person(initialAge: 14)
person3.amIOld()
//Expected Output
//You are a teenager.


