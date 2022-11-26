import Foundation


// MARK: - Checkpoint 6

struct Car {
    // properties
    let modelNumber: String
    let numberOfSeats: Int
    private(set) var currentGear: Int = 1
        
    
    // Gear change method
    mutating func changeGears(userActionForGear: String) {
        if currentGear > 0 && currentGear < 11 {
            if userActionForGear.lowercased() == "up" {
                currentGear += 1
            }
            else if userActionForGear.lowercased() == "down" {
                currentGear -= 1
            }
        }
        else {
            print("Something doesnot make sense !!")
        }
    }
}

var myNewCar = Car(modelNumber: "SKP", numberOfSeats: 7)
myNewCar.currentGear

myNewCar.changeGears(userActionForGear: "up")
myNewCar.changeGears(userActionForGear: "up")
myNewCar.changeGears(userActionForGear: "up")
myNewCar.changeGears(userActionForGear: "up")
myNewCar.changeGears(userActionForGear: "up")
myNewCar.changeGears(userActionForGear: "up")
myNewCar.changeGears(userActionForGear: "up")
myNewCar.changeGears(userActionForGear: "up")
myNewCar.changeGears(userActionForGear: "up")
myNewCar.changeGears(userActionForGear: "up")
myNewCar.changeGears(userActionForGear: "up")
myNewCar.currentGear
