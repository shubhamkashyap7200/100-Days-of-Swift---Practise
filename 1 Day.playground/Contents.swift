import Cocoa
import Foundation

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


// MARK: - For Loop
let os = ["iOS", "macOS", "watchOS", "tvOS", "driverOS", "rOS"]

for os in os {
    print("This is great Apple os : \(os)")
}

// MARK: - While Loop
var countDown = 10

while countDown > 0 {
    print(countDown)
    countDown -= 1
}

print("Rocket goes burr")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

var roll = 0
while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a : \(roll)")
}

print("Critical Hit")

// MARK: - Continue Keyword - Skips the item if condition is met
for i in 1...25 {
    if i % 5 == 0 {
        continue
    }
    print("Values here I::: \(i)")
}

// MARK: - Break Keywork - Exit the loop immediatly if condition is met

for i in 1...25 {
    if i % 5 == 0 {
        break
    }
    print("Values here J::: \(i)")
}

func commonMultiples(number1: Int, number2: Int) -> [Int] {
    var multiples: [Int] = []
    
    for i in 1...100_000 {
        if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
            multiples.append(i)
            
            if multiples.count == 10 {
                break
            }
        }
    }
    return multiples
}

print(commonMultiples(number1: 2, number2: 7))

// MARK: - FizzBuzz Question

func fizzBuzzFunc(){
    for i in 1...100 {
        if (i % 3) == 0 && (i % 5) == 0 { print("FizzBuzz") }
        else if (i % 3) == 0 { print("Fizz") }
        else if (i % 5) == 0 { print("Buzz") }
        else { print(i) }
    }
}

fizzBuzzFunc()

func fibnociSeriesFunc() {
    
}

// MARK: - Sqr Function
func rollDice(numb: Int) -> Int {
    return Int.random(in: 1...numb)
}

let result = rollDice(numb: 6)

// Do two strings contain same characters regardless of order
func twoStringOrderFunc(str1: String, str2: String) -> Bool {
//    for char in str1 {
//        for char2 in str2 {
//            if char == char2 {
//                return true
//            }
//        }
//    }
//
//    return false
    
    return str1.lowercased().sorted() == str2.lowercased().sorted()
}

twoStringOrderFunc(str1: "Hello", str2: "hello")

// MARK: - Return multiple values from function Using TUPLES
func getUser() -> [String] {
    return [""]
}

// Using Tuples in return values
func getUser3() -> (String, String) {
    return ("Shubham", "Kashyap")
}

let (a,b) = getUser3() // Destructing
print("\(a) \(b)")


// MARK: - Customise Parameter Labels
let myName = "Khushboo Verma"
myName.hasPrefix("Khu")

func tellMeName(name a : String = "yo") {
    print(a)
}

tellMeName(name: "Khushboo Verma")

// MARK: - Error Handling for Swift
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short }
    if password == "password" { throw PasswordError.obvious}
    
    if password.count < 8 {
        return "OK"
    }
    else if password.count < 10 {
        return "Good"
    }
    else {
        return "Excellent"
    }
}

// Do Try Keyword
do {
    try checkPassword("1234")
}
catch PasswordError.obvious {
    print("Nopes")
}
catch {
    print("printing :: \(error)")
}

enum CustomErrorType : Error {
    case outOfBounds
}

// MARK: - Checkpoint 4 -- Challenge -- Creating Custom Sqrt Function
func sqrtCalculatorFunc(numb1: Int) throws -> Int? {
    
    // Sqrt Code Here
    if numb1 >= 1 && numb1 <= 25000 {
        for i in 1...500 {
            if i * i == numb1 {
                return i
            }
        }
    }
    else {
        throw CustomErrorType.outOfBounds
    }
    return nil
}

do {
    let result = try sqrtCalculatorFunc(numb1: 22_500)
    print(result ?? "No root found")
    
}
catch CustomErrorType.outOfBounds {
    print("Out of Bounds Error")
}

// MARK: - Closure - Very Important
func greetUser() {
    print("Congo")
}

greetUser()
var greetCopy: () -> Void = greetUser
greetCopy()


// Closure
let newFuncHere = {
    print("Happy Birthday to you !!")
}

newFuncHere()

// Closure with parameter
let closureWithParameters = { (name: String) -> String in // in marks the end of paramters and return type and starts the body of closure
    return ("Hi my name is \(name)")
}

closureWithParameters("Shubham Kashyap")

//
let team = ["Shubham", "Kashyap", "Bruce", "Campbell"]
let sortedTeam = team.sorted()

func firstSorted(n1: String, n2: String) -> Bool { // Custom Sorted Algo
    if n1 == "Shubham" {
        return true
    }
    else if n2 == "Shubham" {
        return false
    }
    
    return n1 < n2
}

//let newSort = team.sorted(by: firstSorted) // Using Func

let latestSort = team.sorted { (n1, n2) in // Using Closure
    if n1 == "Shubham" {
        return true
    }
    else if n2 == "Shubham" {
        return false
    }
    
    return n1 < n2
}

let superLatestSort = team.sorted {   // Using Closure // Using High order syntax
    if $0 == "Shubham" {
        return true
    }
    else if $1 == "Shubham" {
        return false
    }
    
    return $0 < $1 // Ascending Order
//    return $0 > $1 // Descending Order
}


// MARK: - More Closure - High Order Functions
// .filter - Lets us run some code on every item of array (like using for loop on array) and send backs new array that meets our condition
var superHeroes = ["Batman", "Flash", "Bruce", "Superman", "Spiderman"]

let bOnly = superHeroes.filter { $0.hasPrefix("B") }
bOnly

// .map -- transform everyItem of array with custom Logic and make new arrays that meets our condition
var appendCustomLetters = superHeroes.map { $0.uppercased() }
appendCustomLetters

superHeroes.reduce("Wolverine") {
    $0 + $1
}


// MARK: - Accept Functions as parameters
func makeArray(size: Int, using generator : () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

let generated = makeArray(size: 15) {
    Int.random(in: 0...75)
}


func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to me")
    first()
    print("About to me not")
    second()
    print("About to me not here")
    third()
    print("About to me not here done")
}

doImportantWork {
    print("11")
} second: {
    print("22")
} third: {
    print("33")
}

// MARK: - Closure - Checkpoint - 5
let luckyNumbers = [7,4,38,21,16,15,12,33,31,49]

func printLuckyNumbers(luckyNumbers: [Int]) {

    let filteredLuckyNumberArray = luckyNumbers.filter {
        $0 % 2 != 0
    }

    let sortedLuckyNumberArray = filteredLuckyNumberArray.sorted {
        $0 < $1
    }

    let mappedLuckyNumberArray = sortedLuckyNumberArray.map {
        "\($0) is lucky number"
    }

    for i in mappedLuckyNumberArray {
        print(i)
    }
}

printLuckyNumbers(luckyNumbers: luckyNumbers)

func printLuckyNumberUpdated(luckyNumbers: [Int]) {

    let filteredLuckyNumberArray = luckyNumbers.filter {
        $0 % 2 != 0
    }.sorted {
        $0 < $1
    }.map {
        "\($0) is lucky number"
    }

    for i in filteredLuckyNumberArray {
        print("\(i)\n")
    }

}

printLuckyNumberUpdated(luckyNumbers: luckyNumbers)

// MARK: - Structures - Swift
struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("Title: \(title)\nArtist: \(artist)\nYear: \(year)")
    }
}

let album1 = Album(title: "Red", artist: "Taylor Swift", year: 2012)
album1.printSummary()

// MARK: - Computed Property - Important

struct Employee {
    var name :String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            return vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var employeeOne = Employee(name: "Shubham Kashyap", vacationAllocated: 14)
employeeOne.vacationTaken += 6
employeeOne.vacationRemaining = 4
employeeOne.vacationAllocated

// MARK: - Property Observers - Very Important
// didSet
// willSet

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score) \(oldValue)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1


// App
print("\n\n\n\n")
struct App {
    var contacts =  [String]() { // dont put too much calculations on computed properties
        willSet { // less common
            print("Current Value is \(contacts) :::: New Value is \(newValue)")
        }
        
        didSet { // Is used more commonly
            print("There are now \(contacts.count) contacts :::: Old Value is \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Rohit Sharma")
app.contacts.append("Shubham Kashyap")
app.contacts.append("Mr. Dhoni")

