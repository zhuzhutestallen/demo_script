// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let apples :float_t = 3.2
let oranges :float_t = 5.2
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) piec es of frui t."

var emptyString = String()
emptyString += "false nothing"

println(">>>>>>>>>>>>>>>>>>")

var shoppingList = ["catfish","wather","tulips","blue paint"]
shoppingList[1]="bottle of water"

println(shoppingList[0])


var occupations = [
    "Malcolm":"Captain",
    "Kaylee":"Mechanic",
]
occupations["Jayne"] = "Public Relations"
println(occupations["Malcolm"])


let individualScores = [75,43,103,87,13]
var teamScore = 0
for score in individualScores{
    if score>50{
        teamScore += 3
    }else{
        teamScore += 1
    }
}
teamScore

if emptyString.isEmpty{
    println("nothing")
}
else{
    var emptyString = String()
    emptyString += "false nothing"
    var emptyString1 = "aaaaa"
    println(emptyString1 += emptyString)
}


let multiplier = 3
let message = "\(multiplier) 乘以 2.5 是\(Double(multiplier)*2.5)"

var shopping = []
shoppingList = ["abc","🐂"]
shoppingList[1]
shoppingList += ["💔","😢","😄"]
shoppingList[2...4] = ["😞","🐶","🐱"]
shoppingList








