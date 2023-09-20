//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//Day 14: handle missing data with optionals

//optionals: this thing might have a value or might not

let opposites = {
    "Mario: Peach"
    "Luigi: Daisy"
}
let yoshiOpposite = opposite["Yoshi"]

if let marioOpposite = opposite["Mario"]{
    print("Mario's opposite is \(marioOpposite)")
}
var username: String? = nil
if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
}
else{
    print("optional was empty")
}

//pass optional integer into a function that requires a non-optional integer

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
print(square(number: nnumber))

//unwrap to use optional

if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}
if let number = number{
    print(square(number: number))
}

//How to unwrap optionals with guard
func printSquare(of number: Int?) {
    guard let number = number else{
        print("missing input")
        return
    }
    print("\(number) x \(number) is \(number * number)")
}
var myVar: Int? = 3
if let unwrapped = myVar {
    print("Run if myVar has a value inside")
}
guard let unwrapped = myVar else {
    print("Run if myVar doesn't have a value inside")
}
func printSquare(of number: Int?) {
    guard let number = number else{
        return
    }
    print("\(number) x \(number) is \(number * number)")
}
//How to unwrap optionals using with nil coalescing
//"??"

let captains = [
"Enterprise": "Picard"
"Voyager": "Janesway"
"Defiant": "Cisco"
]
let newCaptain = "Serenity"
//With the nil coalescing operator, written ??, we can provide a default value for any optional, like this
let new = captains["Serenity"] ?? "N/A"
//let new = captains["Serenity", default: "N/A"]

let tvShows = ["Suits", "Bob's Burgers", "Friends"]
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}
let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)
