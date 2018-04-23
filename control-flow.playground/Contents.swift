// Created by Faisal Manzer

var appleHardware = ["Watch", "iPhone", "MacBook", "iMac", "Pencil", "Tv"]

print("Hardware which Apple makes: ")
// listing used for indexing the number
var listing = 1
for name in appleHardware {
    print(" \(listing): \(name)")
    listing += 1
}

var optionalString: String? = "This Can contain a value or can be nil"
// printing this will give a warning

// converting optional srting to Srting to avoid errors
if let optionalStringToSrting = optionalString {
    // if the optional statement will be nil the conversion will return false
    
    // This prints the srting correctly
    print(optionalStringToSrting)
}

// tring to catch the nil string
optionalString = nil
if let checkingNil = optionalString {
    print("There is some value: \(checkingNil)")
} else {
    print("It was nil")
}

// tring to catch nil srting using ??
// ?? is called default value operator
var username = "faisal"
var nickname: String? = "Aria"
print("Hi \(nickname ?? username)")
// prints Hi Aria

// seting nickname to nil
nickname = nil
print("Hi \(nickname ?? username)")
// prints Hi faisal

// tring switch satement
var name = "Faisal"
name = "Shireen"
name = "Farheen"
//name = "Rounak"
switch name {
case "Faisal":
    print("\(name) u are naughty")
case "Shireen", "Naaz":
    print("\(name) u are cute")
    // shireen roles out here and does'nt goes to next switch
    // althogh it satisfies both
case let x where x.hasSuffix("een"):
    print("\(name) u are Shireen's sis i guess")
default:
    print("Hey \(name) who are u")
    // when i removed default statement
    //error: switch must be exhaustive
}

// from the apple documentation
// chalange : Add another variable to keep track of which kind of number was the largest, as well as what that largest number was.
// currently gives a warning Immutable value 'kind' was never used; consider replacing with '_' or removing it
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestKind: String?
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
print(largest)
print("Largest Kind: \(largestKind ?? "Nope")")
// we can use sting directly in \() YEEEEHHHHHHH

var sumOfNNumbers = 0

// sum of number using while loop and a extra variable
var n = 1
while n<101 {
    sumOfNNumbers+=n
    n+=1
}
print("Sum of 100 Numbers = \(sumOfNNumbers)")

// repeat{
//
// } while condition

// sum of numbers using for loop and range
sumOfNNumbers = 0
for i in 0..<101 {
    sumOfNNumbers+=i
}
print("Sum of 100 numbers using for loop and range = \(sumOfNNumbers)")
// just checking scope of variable i
//print("value of \(i)")
// error: use of unresolved identifier 'i'
