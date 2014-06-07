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
































