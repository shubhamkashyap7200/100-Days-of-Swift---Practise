import Foundation


// MARK: - Optional
let opposite = ["Mario" : "Wario", "Luigi" : "Waluigi"]
let emptyStorage = opposite["Goomba"]
emptyStorage

// MARK: - Optional Binding - If leet statement
if let marioOpposite = opposite["Mario"] {
    // if let statement has beyond local scope
    // Runs if value is not optional
    print("Not an optional")
    print("\(marioOpposite)")
}
else {
    // Runs if value is an optional
    print("Is an optional")
}

// MARK: - Guard Statement
func printSqaure(of number: Int?) {
    guard let number = number else {  // guard statement always requires escape condition // escape condition like return // guard statement has beyond local scope
        // Runs if value is an an optional
        print("Missing Input")
        return
    }
}

// MARK: - Nil Coalescing Operator ?? -- Provides Default value -- Optional Chaining
let classicCartoons: [String : Int] = [
    "Tom & Jerry": 1940,
    "Bug's Bunny": 1938,
    "Ben 10": 2005
]

// Optional Chaining and Nil Colescing Operator
let firstCartoonOriginalAIRDAte = classicCartoons["Bug's Bunny"]?.trailingZeroBitCount ?? 00


// MARK: - Error Handling of Optionals

enum UserError: Error {
    case badID, networkFailure
}

func getUser(id: Int) throws -> String {
    throw UserError.badID
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 28)) ?? "NA"
