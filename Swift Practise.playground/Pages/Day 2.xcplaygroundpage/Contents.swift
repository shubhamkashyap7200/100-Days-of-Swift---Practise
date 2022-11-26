import Foundation

// MARK: - Static properties and methods
struct School {
    static var studentCount = 0
    
    static func addStudent(newStudent: String) {
        print("\(newStudent) has joined our school")
        studentCount += 1
    }
}

School.studentCount = 150
School.addStudent(newStudent: "Shubham Kashyap")
School.studentCount

// Reading non static var or func are not allowed from School

// self is used for current values in structures

// Self is used for current type of Struct

struct AppData {
    static let version = "1.5 Alpha 6"
    static let saveFileName = "settings.json"
    static let homeURL = "https://www.facebook.com"
}

AppData.version

// Static variables are not singleton

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "modularcode", password: "password")
}


