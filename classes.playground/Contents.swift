// Created by Faisal Manzer

let PIE = 3.14

// declaring a class square and contains a function area to calculate area
// renamed it to Squaretest from Square because of lacking examples
class SquareTest{
    var sideLenght = 0
    func area() -> Int {
        return sideLenght*sideLenght
    }
}

var squareTest = SquareTest()
squareTest.sideLenght = 4
print(squareTest.area())
// an error comes when i named square = square() which is obvious

// declaring a class circle with 2 functions area and circumference and a initilizer

class Circle{
    var radius: Int
    init(_ radius: Int) {
        self.radius = radius
        // used self to distinguish
    }
    func area(_ radius: Int? = nil) -> Double {
        let radius = radius ?? self.radius // ----------- need to find shorcut of this -----------
        return PIE*Double(radius*radius)
    }
    func  circ() -> Double {
        return PIE*2*Double(radius)
        // tring without self
    }
}
// gives error when i tried PIE*radius*radius

var circle = Circle(50)
//print("Area of radius 50 = \(Circle.area())")
// gives an error because i used Circle instead of circle ooopsss :)
// Instance member 'area' cannot be used on type 'Circle'; did you mean to use a value of this type instead?

print("Area of radius 50 = \(circle.area())")
print("Area of radius 100 = \(circle.area(100))")

print("Circumference of radius 50 = \(circle.circ())")

// trying inheritance
class Rectangle{
    var length = 0
    var breadth = 0
    init(length: Int, breadth: Int){
        self.breadth = breadth
        self.length = length
    }
    
    func area(length: Int? = nil, breadth: Int? = nil) -> Int {
        let length = length ?? self.length
        let breadth = breadth ?? self.breadth
        return length*breadth
    }
    
    func showAll(){
        print("length: \(length)")
        print("breadth: \(breadth)")
        print("Area: \(area())")
    }
}

class Square: Rectangle{
    var side = 0
    var perimeter: Int {
        get{
            return side*2
        }
        set(newTryName) {
            side = newTryName / 2
            // name newValue is eplicit
            // newTryName is delclared dircectly without type because we have declared type
        }
    }
    init(_ side: Int){
//        self.length = length
//        self.breadth = breadth
        // tried above which results in error
        // 'self' used in property access 'length' before 'super.init' call
        // super.init' isn't called on all paths before returning from initializer
        self.side = side
        super.init(length: side, breadth: side)
    }
    
    // i want an expreiment
    func area(side: Int? = nil) -> Int{
        let side = side ?? self.side
//        print("Used Square")
        return side*side
    }
    override func showAll() {
        print("Side: \(side)")
        print("Area: \(area())")
    }
}

//square = Square(10)
// i just tried to reuse the variable error:
// Cannot assign value of type 'Square' to type 'SquareTest'

var square = Square(10)
print("area = \(square.area())")
//print("area = \(square.super.area())")
// ---------------
// trying to use super calss area needs help
// ---------------

print("Area using Rectangle \(square.area(length: 10, breadth: 10))")
// ----------------
// find other method to implement it
// ----------------

//square.showAll()
// called before overwriting
// prints
//length: 10
//breadth: 10
//Area: 100

square.showAll()

print(square.perimeter)
square.perimeter = 30
print(square.side)

// willSet and didSet not practiced but understood any time we can get refrence

// tring optional intance value
var optionalSquare: Square? = Square(15)
//let sideLength = optionalSquare.side
// gives error: Value of optional type 'Square?' not unwrapped; did you mean to use '!' or '?'?
// because i didnt used ?
//print(sideLength)

var sideLength = optionalSquare?.side
//print(sideLength)
// gives warning Expression implicitly coerced from 'Int?' to Any
// prints Optional(15)
print(sideLength!)
// prints 15
//sideLength = nil
//print(sideLength!)
// gives Fatal error: Unexpectedly found nil while unwrapping an Optional value
