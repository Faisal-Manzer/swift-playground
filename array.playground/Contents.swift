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

//----------------------------------
// need serious explaination in code below
//----------------------------------

//print(appleSoftware["iMac"])
// prints Optional("macOS High Sierra")
// gives warning
// Expression implicitly coerced from 'String?' to Any

//print(String(appleSoftware["iMac"]))
// error: array.playground:15:7: error: cannot invoke initializer for type 'String' with an argument list of type '(String?)'

//print(String(appleSoftware[2]))
// error: array.playground:10:14: error: cannot subscript a value of type '[String : String]' with an index of type 'Int'

// Declaring an empty array with type String
var friendList = [String]()

// Declaring an empty dictionary Name: age
var ageList = [String: Float]()

// Empty Array
//var anEmptyArray = []
// Empty collection literal requires an explicit type

// Clearing an array
appleHardware = []

// Clearing dictionary
