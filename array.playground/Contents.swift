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
// Got the explaination in optional string

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

// an experiment just for thought
// we declare array as [Inetger]()
// and dictionary as [String: Integer]()
// so can we declare a dictionary with array in it
// like [String: [Integer]()]()
//var experimentWithArrayAndDict = [String: [Int]()]()
// error: type of expression is ambiguous without more context
//var anExp = [String: Array]()
// error: generic parameter 'Element' could not be inferred
//var anExp = [String: [Array]()]()
// error: generic parameter 'Element' could not be inferred
// finally done experiment
var anExp = [String : [Int]]()

var anArrayOfInt = [Int]()

//anArrayOfInt[0] = 1
// Fatal error: Index out of range

//anArrayOfInt+=1
// error: binary operator '+=' cannot be applied to operands of type '[Int]' and 'Int'

// finally an stackoverflow ans worked
anArrayOfInt += [1]

// array.append
anArrayOfInt.append(2)

// array.insert(item, at: index)
anArrayOfInt.insert(3, at: 2)

// array.insert(contentsOf: array, at: index)
anArrayOfInt.insert(contentsOf: [4,5], at: 3)

for item in anArrayOfInt {
    print(item)
}
