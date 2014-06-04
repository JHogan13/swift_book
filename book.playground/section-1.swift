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





