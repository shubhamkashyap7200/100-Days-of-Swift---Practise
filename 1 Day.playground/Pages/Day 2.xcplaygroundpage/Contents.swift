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
