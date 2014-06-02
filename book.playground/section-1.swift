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










