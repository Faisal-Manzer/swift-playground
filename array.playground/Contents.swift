// Created by Faisal Manzer

// Declaring an array
var appleHardware = ["Watch", "iPhone", "MacBook", "iMac", "Pencil", "Tv"]

// Declaring a dictionary
var appleSoftware = [
    "iPhone" : "iOS",
    "MacBook" : "macOS",
    "iMac" : "osX",
    "Tv" : "tvOS"
]

// Changing a value
appleSoftware["iMac"] = "macOS High Sierra"
print(appleSoftware["iMac"])
//print(String(appleSoftware[2]))
// error: array.playground:10:14: error: cannot subscript a value of type '[String : String]' with an index of type 'Int'

// Declaring an empty array with type String
var friendList = [String]()

// Declaring an empty dictionary Name: age
var ageList = [String: Float]()

