import Foundation

// MARK: - Static properties and methods
struct School {
    static var studentCount = 0
    
    static func addStudent(newStudent: String) {
        print("\(newStudent) has joined our school")
        studentCount += 1
    }
}

