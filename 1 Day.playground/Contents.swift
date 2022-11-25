import Cocoa

// MARK: - String

var greeting = "Hello, playground"
let storeConstant = "This value cannot be changed"
var storeChangingValue = "This value can change is future"


for _ in 0...10 {
    storeChangingValue += " a"
}


let stringValue = "Hello World \"Ollo\" King of world"
stringValue.count
storeConstant.count


stringValue.uppercased()
stringValue.lowercased()

stringValue.hasPrefix("Hello")
stringValue.hasSuffix("world")


// MARK: - Interger
let marks = 10
let reallyBig = 1_000_____4_5__0_____00

let less = marks - 50
let multi = marks * 78
let addi = marks + 45
let divide = marks / 468

var counter = 10
counter += 57
counter %= 10

counter += 854567
counter /= 10

counter.isMultiple(of: 6)


// MARK: - Floating Numbers - Double and Float
let number : Double = 0.6
let number2: Double = 0.2

let number3 = 0.4 + 0.3
let swiftFloat = 0.1
var number4 = 7.0
number4 /= 3
print(number3)


// MARK: - Bool
var truth = true
var lie = false

truth = !truth

lie.toggle()


// MARK: - String plus and String Interpolation
let firstPart =  "Shubham "
let secondPart = "Kashyap"
let fullName = firstPart + secondPart

let focus = fullName + " is going to be great " + "SDE 3"

let stringInterpolation = "This is great focus \(focus) \(number4) \(multi)"


// MARK: - Checkpoint - Celsius to Farenheit Calculator
let celsius: Double = 20
let farenheit = (celsius * 9) / 5 + 32

func converterToFarenheit(celsius: Double) -> Double {
    return (celsius * 9) / 5 + 32
}

print("Temp in Farenhiet is \(converterToFarenheit(celsius: celsius))° and Temp is Celsius is \(celsius)°")

// MARK: - Array - Ordered Collection
var flowers: [Any] = ["sunflower", "rose" , "lotus", "daisy", "tulip"]
flowers.append(12_800)

var numbers = Array<Int>()
numbers.append(56)

var boxRandom = [String]()
var boxNotRandom = [""]

flowers.remove(at: 5)
flowers.removeAll()
flowers

numbers.contains(56)


let presidents = ["Kennedy", "Lincon", "Bush", "Obama", "Trump"]
let reversedPresident = presidents.reversed()
print(reversedPresident)

let sortedPresident = presidents.sorted()
print(sortedPresident)

presidents.firstIndex(of: "Lincon")


// MARK: - Dictionary

let student: [String : Any] = [
    "name" : "Shubham",
    "age" : 23,
    "goal" : "Maang"
]

print(student["age", default: "Unknown"])

let olympics = [
    2012: "London",
    2016: "Rio",
    2021: "Tokyo",
]

olympics[2012, default: "Unknown"]

var herosVillians = [
    "Batman" : "Joker",
    "Superman" : "General Zod",
    "Spiderman" : "Doc oc",
    "Wolverine" : "Silver Bullets in head"
]

herosVillians["Batman"] = "Scarecrow"
herosVillians

// MARK: - Sets
let numValues = Set(
    [1,5,6,8,8,6,5,1]
)

numValues.count

var setHere: Set = ["Hello", "World", "Hello"]
setHere.insert("Values go here")
setHere.sorted()


// MARK: - Enum
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

var day = Weekday.monday
day = .friday


enum UIStyle {
    case light, dark, system
}

var style = UIStyle.system
style = .dark

let username: String
// complex logic here
username = "Shraddha"
// more complex logic here
print(username)

enum ComplementaryColors: String {
    case task = "tasky"
}

var color = ComplementaryColors.task
color = .task
color


// MARK: - Checkpoint 2
let name = ["jon", "tom", "tom", "kerry", "bolt", "jon"]
name.count

let uniqueNames = Set(name)
uniqueNames.count


// MARK: - If/Else Statement
let names = "Shubham"

if names == "Shubham" {
    print("Yes")
}

if names.count == 0 {
    print("YN")
}

if names.isEmpty {
    print("No")
}


// MARK: - Switch Statement
enum Forecast {
    case sun, rain, snow, wind, unknown
}

let forecast = Forecast.sun

switch forecast {
case .sun:
    print("Sunny Day")
case .rain:
    print("Rainy Day")
case .snow:
    print("Snow Day")
case .wind:
    print("Windy Day")
case .unknown:
    print("Unknown Day")
}

// Christmas Song
let newDay = 5
print("My true love gave to me")

switch newDay {
case 5:
    print("555")
    fallthrough
case 4:
    print("444")
    fallthrough
case 3:
    print("333")
    fallthrough
case 2:
    print("222")
    fallthrough
default:
    print("NOPES")
}

// MARK: - Ternery Operator
let firstNumber = 5
let secondNumber = 7

((firstNumber + secondNumber) == 12) ? print("TRUE"): print("FALSE")


let newNames = ["Shubham", "Khushboo", "Jany"]
let crewCount = newNames.isEmpty ? "No one" : "\(newNames.count) people"
