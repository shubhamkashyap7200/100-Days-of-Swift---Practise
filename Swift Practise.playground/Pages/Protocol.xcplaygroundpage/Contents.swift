import Foundation

// MARK: - Protocols

protocol Vehicle { // use protocol to create new code contract
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Tesla: Vehicle {
    var name: String = "Tesla"
    
    var currentPassengers: Int = 4
    
    func estimateTime(for distance: Int) -> Int {
        print("\(distance) here")
        return 0
    }
    
    func travel(distance: Int) {
        print("\(distance) here")
    }
    
    var charge: Int
}

let tesla = Tesla(charge: 50)
tesla.estimateTime(for: 10)

func commute(distance: Int, using vehicle: Tesla){
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow")
    }
    else {
        vehicle.travel(distance: distance)
    }
}

commute(distance: 50, using: tesla)

struct Bicycle: Vehicle {
    var name: String = "Hero"
    
    var currentPassengers: Int = 2
    
    func estimateTime(for distance: Int) -> Int {
        return 7864
    }
    
    func travel(distance: Int) {
        //
    }
}
