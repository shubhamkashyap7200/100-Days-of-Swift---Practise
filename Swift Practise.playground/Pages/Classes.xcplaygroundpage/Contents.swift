import Foundation

// MARK: - Classes
// Uncomment Code to test


// Has Inheritence
// Reference Type - Copy data refer to same point
// Do not have memberwise init func because of inheritence - As If class inherit multi other classes it will become night of dependency of init parameters
// are generally slow because they stored in heaps in memory
// deinit can be used
// Very important for SwiftUI

class Game {
    var score = 0 {
        willSet { // First Frame of value is changed
            print("Will Set")
        }
        
        didSet { // When value has changed
            print("Score is now \(score)")
        }
    }
}

var newQuiz = Game()
newQuiz.score += 10

//
print("\n\n\n\n")
class Employee {
    let hours: Int
    let name: String
    
    init(hours: Int, name: String) {
        self.hours = hours
        self.name = name
    }
    
    func printSummary() {
        print("I work for \(hours) hours a day. -- SuperClass")
    }
}

final class Designer: Employee { // final keyword is used to stop further inheritence
    func work() {
        print("I do cool design stuff.\nI work for \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I write 5 lines of code and spend 2 hours to debug it.\nI work for \(hours) hours a day.")
    }
    
    override func printSummary() { // use override keyword to change superclass func
        super.printSummary() // inherit behaviour of superclass func
        print("Hello World")
    }
}

let designerOne = Designer(hours: 8, name: "Shubham Kashyap")
designerOne.work()
designerOne.printSummary()

let developerOne = Developer(hours: 12, name: "Johhny Smith")
developerOne.printSummary()


//class Intern: Designer { // final keyword has stopped inheritence
//
//}

//class Intern: Developer, Designer { // Multiple inheritence is not supported in swift
//
//}

class Intern: Developer {
    
}


// MARK: - Initialiser for Classes
//class Vehicle { // empty initiallisation is not allowed in class because doesnot create memberwise initialiser

//    let isElectric: Bool
//}
//

//struct NewVehicle { // empty initialisation is allowed in structures because swift creates memberwise initialiser

//    let isNew: Bool
//}

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric) // have to call after this call initialisation
    }
}

let teslaY = Car(isElectric: true, isConvertible: true)


// MARK: - Copy Classes
// Classes are reference type

class User {
    var username = "Hidden"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1 // Will change orignal reference
//var user2 = user1.copy() // Will not change original reference
user2.username = "Johnny"

user1.username
user2.username

// MARK: - Deinit - Is optional but important
print("\n\n\n\n")
//struct University { // Structures dont have deinit because you cant copy them
//    let name : String
//
//    init() {
//        print("Hey")
//    }
//
//    deinit {
//        print("Bye")
//    }
//}

class NewUser {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id) :: I am now well")
    }
    
    deinit { // Is called when last remaining reference is detroyed from memory
        print("User \(id) :: I am now gone")
    }
}

for i in 1...3 {
    let user = NewUser(id: i)
    print("\(user.id)")
}

// MARK: - Variables in Classes
class CoolUser {
    var name = "Shubham"
}
    
let user = CoolUser()
user.name = "Kashyap"

//user = CoolUser()
//user.name
