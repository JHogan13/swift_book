// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

let explicitFloat: Float = 4

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let name = "Human"
let greeting1 = "Hello \(name), there are \(4.0 * 2) of you"

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [

    "Malcolm" : "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
occupations

let emptyArray = String[]()
let emptyDictionary = Dictionary<String, Float>()

shoppingList = []

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0

for score in individualScores {
    if (score > 50) {
        teamScore += 3
    }
    else {
        teamScore += 1
    }
}

teamScore

var optionalString: String? = "Hello"
optionalString == nil

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"

if let name = optionalName {
    greeting = "Hello, \(name)"
}

let vegetable = "red pepper"
switch vegetable {
case "celery":
        let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
        let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
        let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}

let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square": [1,4,9,16,25]
]

var knd = ""
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if (number > largest) {
            largest = number
            knd = kind
        }
    }
}

largest
knd

var n = 2
while n < 100 {
    n = n * 2
}

n

var m = 2
do {
    m = m * 2
} while m < 100

m

var firstForLoop = 0
for i in 0...3 {
    firstForLoop += i
}
firstForLoop

var secondForLoop = 0
for var i = 0; i < 3; ++i {
    secondForLoop += 1
}
secondForLoop

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}

greet("Bob", "Tuesday")

func getGasPrices() -> (Double, Double, Double) {
    return (3.56, 4.22, 3.65);
}

getGasPrices()

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    
    return sum
}

sumOf()
sumOf(42, 55, 100)

/*
func avgOf(nums: Int...) -> Double {
    let sum = sumOf(nums)
    let cnt = nums.count
    
    return sum / cnt
}
*/

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    
    add()
    return y
}

returnFifteen()


func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
increment(7)

func hasAnyMatches(list: Int[], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, lessThanTen)



numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
    })

numbers.map({
    (number: Int) -> Int in
    return number % 2 == 0 ? 3 * number : 0
})

numbers.map({ number in 3 * number })

sort([1, 5, 3, 12, 2]) { $0 > $1 }

class Shape {
    var numberOfSides = 0
    let name = ""
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    func greetShape(person: String) -> String {
        return "Hi \(person)."
    }
}

let triangle = Shape()
triangle.numberOfSides = 7
let desc = triangle.simpleDescription()
triangle.greetShape("Bill")

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square : NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

class Circle : NamedShape {
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 0
    }
    
    func area() -> Double {
        return 3.14 * radius * radius
    }
    
    func describe() -> String {
        return "A circle with radius \(radius)."
    }
}

let circle = Circle(radius: 12.0, name: "Bill")
circle.area()
circle.describe()

class EquilateralTriangle : NamedShape {
    var sideLength: Double = 0.0
    
    init (sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get { return 3.0 * sideLength }
        set { sideLength = newValue / 3.0 }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

let eqTriangle = EquilateralTriangle(sideLength: 2.0, name: "Bill")
eqTriangle.perimeter
eqTriangle.perimeter = 9.9
eqTriangle.sideLength



class TriangleAndSquare {
    var triangle: EquilateralTriangle {
    willSet { square.sideLength = newValue.sideLength }
    }
    
    var square: Square {
    willSet { triangle.sideLength = newValue.sideLength }
    }
    
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

let triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
triangleAndSquare.square.sideLength
triangleAndSquare.triangle.sideLength
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
triangleAndSquare.triangle.sideLength


class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes times: Int) {
        count += amount * times
    }
}

var counter = Counter()
counter.incrementBy(2, numberOfTimes: 7)

let optionalSquare: Square? = Square(sideLength: 2.4, name: "optional square")
let sideLength = optionalSquare?.sideLength

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace: return "ace"
        case .Jack: return "jack"
        case .Queen: return "queen"
        case .King: return "king"
        default: return String(self.toRaw())
        }
    }
    
    func compare(rank: Rank) -> Int {
        if (self.toRaw() > rank.toRaw()) {
            return 1;
        }
        else if (self.toRaw() < rank.toRaw()) {
            return -1;
        }
        else {
            return 0;
        }
    }
}

let ace = Rank.Ace
let aceRawValue = ace.toRaw()

ace.compare(Rank.Queen)

if let convertedRank = Rank.fromRaw(3) {
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit: Int {
    case Spades = 1
    case Hearts, Diamonds, Clubs
    
    func simpleDescription() -> String {
        switch self {
        case .Spades : return "spades"
        case .Hearts : return "hearts"
        case .Diamonds : return "diamonds"
        case .Clubs : return "clubs"
        }
    }
    
    func color() -> String {
        switch self {
        case .Spades : return "black"
        case .Clubs: return "black"
        default: return "red"
        }
    }
}

let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()

hearts.color()

struct Card {
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
    static func makeDeck() -> Card[] {
        var deck = Card[]()
        
        for s in 1...4 {
            for r in 1...13 {
                if let theSuit = Suit.fromRaw(s) {
                    if let theRank = Rank.fromRaw(r) {
                        deck.append(Card(rank: theRank, suit: theSuit))
                    }
                }
            }
        }
        
        return deck
    }
}

let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDesc = threeOfSpades.simpleDescription()

let theDeck = Card.makeDeck()


enum ServerResponse {
    case Result(String, String)
    case Error(String)
    case Exception(String)
}

let success = ServerResponse.Result("6:00am", "8:09pm")
let failure = ServerResponse.Error("Out of cheese.")
let exc = ServerResponse.Exception("WTF DID YOU DO")

switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
    let serverResponse = "Failure... \(error)"
case let .Exception(ex):
    let serverResponse = "Exception thrown - \(ex)"
}

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}

var a = SimpleClass()
a.simpleDescription
a.adjust()
let aDesc = a.simpleDescription

var barb = SimpleClass()
let barbDesc = barb.simpleDescription
barb.adjust()

barbDesc

let bill = SimpleClass()
bill.adjust()

bill

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

let max : ExampleProtocol = b

max.simpleDescription

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}

7.simpleDescription
let hunter = 13
// hunter.adjust() Why doesn't this work??
hunter.simpleDescription

let protocolValue: ExampleProtocol = a
protocolValue.simpleDescription

func repeat<ItemType>(item: ItemType, times: Int) -> ItemType[] {
    var result = ItemType[]()
    for i in 0..times {
        result += item
    }
    
    return result
}

repeat("knock", 4)

repeat(4, 10)

// Reimplement the Swift standard library's optional type
enum OptionalValue<T> {
    case None
    case Some(T)
}

var possibleInteger: OptionalValue<Int> = .None
possibleInteger = .Some(100)


func anyCommonElements <T, U where
    T: Sequence,
    U: Sequence,
    T.GeneratorType.Element: Equatable,
    T.GeneratorType.Element == U.GeneratorType.Element>
    (lhs: T, rhs: U) -> Bool {
        for lhsItem in lhs {
            for rhsItem in rhs {
                if lhsItem == rhsItem {
                    return true
                }
            }
        }
        
        return false
}

func commonElements <T, U where
    T: Sequence,
    U: Sequence,
    T.GeneratorType.Element: Equatable,
    T.GeneratorType.Element == U.GeneratorType.Element>
    (lhs: T, rhs: U) -> Array<T.GeneratorType.Element>  {
        
        var result = Array<T.GeneratorType.Element>()
        for lhsItem in lhs {
            for rhsItem in rhs {
                if lhsItem == rhsItem {
                    result.append(lhsItem)
                }
            }
        }
        
        return result
}

anyCommonElements([1, 2, 3], [3])
commonElements([1,2,3], [3,4,1])


// Constants and Variables

let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0

// Type Annotations

var welcomeMessage: String

welcomeMessage = "Hello"

// Naming Constants and Variables

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

let languageName = "Swift"
//languageName = "Swift++" - NOPE

println(friendlyWelcome)
print(friendlyWelcome)

println("The current value of friendlyWelcome is \(friendlyWelcome)")


// Integer Bounds

let minValue = UInt8.min
let maxValue = UInt8.max


// Floating Point Type Inference
// Swift chooses Double (in ambiguous Float situations)

let anotherPi = 3 + 0.14159


// Numeric Literals

let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

// Integer Conversion

//let cannotBeNegative: UInt8 = -1  - NOPE

//let tooBig: Int8 = Int8.max + 1 - NOPE

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let _16Max = UInt16.max
let _one: UInt8 = 1
//let _16MaxAndOne = _16Max + UInt16(_one) // Broken?

// Integer and Floating-Point Conversion

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine

let integerPi = Int(pi) // floating points are always truncated when initializing an int

// Type Aliases

typealias AudioSample = UInt16

var maxAmplitudeFound = AudioSample.min

// Boolean

/*
let i = 1
if i {
    // err : Type Int does not conform to protocol 'LogicValue'
}
*/

let i = 1
if i == 1 {
    // all good
}

// Tuples

let http404Error = (404, "Not Found")

let (statusCode, statusMessage) = http404Error
println("The status code is \(statusCode)")
println("The status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
println("The status code is \(justTheStatusCode)")

println("The status code is \(http404Error.0)")
println("The status message is \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")
println("The status code is \(http200Status.statusCode)")
println("The status message is \(http200Status.description)")


// Optionals

let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()

if convertedNumber {
    println("\(possibleNumber) has an integer value of \(convertedNumber!)")
} else {
    println("\(possibleNumber) could not be converted to an integer")
}

// Optional Binding

if let actualNumber = possibleNumber.toInt() {
    println("\(possibleNumber) has an integer value of \(actualNumber)")
} else {
    println("\(possibleNumber) could not be converted to an integer")
}

// nil

var serverResponseCode: Int? = 404
serverResponseCode = nil

// Implicitly Unwrapped Optionals

let possibleString: String? = "An optional string."
println(possibleString!) // requires !

let assumedString: String! = "An implicitly unwrapped optional string."
println(assumedString)


// Assertions

let age = -3
assert(age >= 0, "A person's age cannot be less than 0")

// Collection Types

// Arrays

var shoppingList_ = ["Eggs", "Milk"]
shoppingList_ += "Baking powder"
shoppingList_ += ["Chocolate Spread", "Cheese", "Butter"]

var firstItem = shoppingList_[0]

shoppingList_[0] = "Six eggs"
shoppingList_[4...6] = ["Bananas", "Apples"]

shoppingList_.insert("Maple Syzrp", atIndex:0)

let mapleSyrup = shoppingList_.removeAtIndex(0)

firstItem = shoppingList_[0] // Closed gap

let apples_ = shoppingList_.removeLast()

for item in shoppingList_ {
    println(item)
}

for (index, value) in enumerate(shoppingList_) {
    println("Item \(index + 1): \(value)")
}

var someInts = Int[]()
println("someInts is of type Int[] with \(someInts.count) items.")

someInts.append(3)

someInts = []

var threeDoubles = Double[](count: 3, repeatedValue:0.0)

var anotherThreeDoubles = Array(count: 3, repeatedValue:2.5)

var sixDoubles = threeDoubles + anotherThreeDoubles

// Dictionaries





















































































