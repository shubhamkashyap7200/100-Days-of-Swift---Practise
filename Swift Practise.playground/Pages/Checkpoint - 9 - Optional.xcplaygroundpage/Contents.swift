import Foundation

func randomGeneratorOfNumberWithUserProvidedInputArray(userInputArray: [Int]?) -> Int {
    // Error Handling
    guard let userInputArray = userInputArray else {
        print("AA")
        return Int.random(in: 0...100)
    }
    
    let userInputArrayCountRange = userInputArray.count - 1
    print("BB")
    return userInputArray[Int.random(in: 0...userInputArrayCountRange)]
}

let inputArray = [5, 6, 8, 5]
let secondInputArray: [Int]? = []
randomGeneratorOfNumberWithUserProvidedInputArray(userInputArray: inputArray)


func simpleRandomGenerator(inputArray: [Int]?) -> Int {
    return inputArray?.randomElement()  ?? Int.random(in: 0...100)
}

//simpleRandomGenerator(inputArray: [])
