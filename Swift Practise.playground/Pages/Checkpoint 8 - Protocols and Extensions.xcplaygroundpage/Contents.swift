import Foundation

// MARK: - Checkpoint 8
protocol Building {
    var numberOfRooms: Int { get }
    var cost: Int { get }
    var realEstateSellerName: String { get }
    
    func detailsAboutTheBuilding()
}

struct House: Building {
    var numberOfRooms: Int
    
    var cost: Int
    
    var realEstateSellerName: String
    
    func detailsAboutTheBuilding() {
        print("This building is Jason's House with \(numberOfRooms) rooms, Sold by \(realEstateSellerName) with a price tag of \(cost)$")
    }
}

struct Office: Building {
    var numberOfRooms: Int
    
    var cost: Int
    
    var realEstateSellerName: String
    
    func detailsAboutTheBuilding() {
        print("This building is Johhny's Office with \(numberOfRooms) rooms, Sold by \(realEstateSellerName) with a price tag of \(cost)$")
    }
}

let house1 = House(numberOfRooms: 5, cost: 500_000, realEstateSellerName: "Jaden Smith")
house1.detailsAboutTheBuilding()

let office1 = Office(numberOfRooms: 40, cost: 1_500_000, realEstateSellerName: "Will Smith")
office1.detailsAboutTheBuilding()
