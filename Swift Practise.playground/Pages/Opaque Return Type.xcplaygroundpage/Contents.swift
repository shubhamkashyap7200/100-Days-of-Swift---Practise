import Foundation

// MARK: - Opaque Type
func randomNumberGenerator(upto : Int) -> some Equatable {
    return Int.random(in: 0...upto)
}

print(randomNumberGenerator(upto: 100))

func getRandomBool() -> some Equatable {
    return Bool.random()
}

getRandomBool()
