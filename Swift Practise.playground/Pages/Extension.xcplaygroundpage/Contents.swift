import Foundation
import Cocoa

// MARK: - Extension
extension String {
    func customTrim() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    var lines: [String] {
        self.components(separatedBy: .whitespacesAndNewlines)
    }
}

var newString = " hello world is great and can be better "
newString.customTrim()
print(newString.customTrim().lines)


struct Book {
    let title: String
    let subtitle: String
    let pageCount: Int
    
//    init(title: String, subtitle: String) {
//        self.title = title
//        self.subtitle = subtitle
//        self.pageCount = 80
//    }
}

extension Book {
    init(title: String, subtitle: String) { // initialiser in extension allows us to still get initialser in the object when we create a new one
        self.title = title
        self.subtitle = subtitle
        self.pageCount = 50
    }
}

let book1 = Book(title: "Coding", subtitle: "It's great", pageCount: 50)

// MARK: - Protocol Extensions - Very Important

extension Collection {
    var isNotEmpty: Bool {
        get {
            return self.isEmpty == false
        }
    }
}

let emptySet = Set<String>()
let guests = ["Mario", "James", "Mary"]

if guests.isNotEmpty == false {
    print("Guests count is \(guests.count)")
}

// MARK: - Optional Protocols funcs and properties

protocol Person {
    var name: String { get }
    func sayGreeting() // defining it in extension also make it optional
}

extension Person {
    func sayGreeting() { // defining it in extension also make it optional
        print("Hola amigos from the extension")
    }
}

struct WalmartEmployee: Person {
    var name: String
    
    func sayGreeting() {
        print("Hello \(name) in english")
    }
}

let walmartEmployee = WalmartEmployee(name: "Johhny Smith")
walmartEmployee.sayGreeting()

// MARK: - Advanced Protocol extension
extension Numeric {
    var squared: Self { // Self makes it as type of data structure // Structure
        get {
            return self * self // self is type of data type // like Int, Double
        }
    }
}

var wholeNumber = 1.5
wholeNumber.squared

// MARK: - Advanced Protocol -- Equatable -- Comparable

struct User: Equatable, Comparable {
    let name: String
        
    static func <(lhs: User, rhs: User) -> Bool {
        return lhs.name < rhs.name
    }
}

let user1 = User(name: "Donkey Kong")
let user2 = User(name: "Diggy Kong")
user1 == user2
user1 != user2
user1 < user2
