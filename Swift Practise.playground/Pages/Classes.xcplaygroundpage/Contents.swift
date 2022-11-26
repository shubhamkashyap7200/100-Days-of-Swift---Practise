import Foundation

// MARK: - Classes
// Has Inheritence
// Reference Type - Copy data refer to same point
// Do not have memberwise init func because of inheritence - As If class inherit multi other classes it will become night of dependency of init parameters
// are generally slow because they stored in heaps in memory
// deinit should always used
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
