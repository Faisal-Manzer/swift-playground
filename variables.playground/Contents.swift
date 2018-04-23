// Created by Faisal Manzer
// import Cocoa

// Hello World Entry
print("Hello Apple")

// Declaring a Variable
var myFirstSwiftVariable = "A Variable"
print(myFirstSwiftVariable)

// Changing variable's Value
myFirstSwiftVariable = "I changed its Value"
print("Changed Variable: ")
print(myFirstSwiftVariable)

// Declaring a constant
let pi = 3.14
print(pi)

// Trying to change value of constant
//pi = 4
// error: variables.playground:15:4: error: cannot assign to value: 'pi' is a 'let' constant

// Trying to assign Integer value to "myFirstSwiftVariable" which was String previouly
//myFirstSwiftVariable = 10
// error: variables.playground:19:24: error: cannot assign value of type 'Int' to type 'String'

// Declaring an explicit variable of type Double
var explicitVariable: Double = 80
// Declaring an implicit variable of type Double
var implicitVariable = 80.0

// Constant with explicit type Float
let somethingExplicit: Float = 4
print(somethingExplicit)
// Prints 4.0 instead of 4

// Trying to give Float value of Double
//somethingExplicit = explicitVariable
// error: variables.playground:33:19: error: cannot assign to value: 'somethingExplicit' is a 'let' constant

// Trying to give Double value of Float
//explicitVariable = somethingExplicit
// error: variables.playground:37:20: error: cannot assign value of type 'Float' to type 'Double'

// Integer to string conversion
var myAge = 19
let ageLine = "My age is "
//var myAgeLine = ageLine + myAge
// error: variables.playground:43:25: error: binary operator '+' cannot be applied to operands of type 'String' and 'Int'
var myAgeLine = ageLine + String(myAge)
print(myAgeLine)

// Using slash way to convert to sting
var myAgeLineWithSlash = "My age is \(myAge)"
print(myAgeLineWithSlash)

// Trying to perform calculation under slash
var experementWithFloatUnderSlash = "This is experement to add 2 + 5.6 = \(2+5.6)"
print(experementWithFloatUnderSlash)
var experementSecond = "PIE*2 = \(pi*2)"
print(experementSecond)

// Trying to write long long qoute
var longLongQuote = """

U do know my name is "Faisal Manzer"
and my age = \(myAge)
I can add 2 + 4 = \(2+4)
"""
print(longLongQuote)

// Declaring Optional String
var optionalString: String? = "This is optional value"
//print(optionalString)
// prints Optional("This is optional value")
// printing an optional string gives warning
// Expression implicitly coerced from 'String?' to Any


