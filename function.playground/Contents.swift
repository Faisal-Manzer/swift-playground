// Created By Faisal Manzer

// reating a function just to return age of a person
func displayAge(name: String, age: Int) -> String{
    return "\(name)'s age is \(age)"
}

print(displayAge(name: "Faisal", age: 19))
print(displayAge(name: "Naaz", age: 18))

// function with no argument label
func sayHi(_ name: String) -> String{
    return "Hi \(name)"
}

//func sayHi(name: String) -> String{
//print(sayHi("Faisal"))
// error: missing argument label 'name:' in call


print(sayHi("Faisal"))
// prints Hi Faisal

// function with multiple labels
func goingOut(_ name: String, on day: String) -> String {
    return "\(name) is going out on \(day)"
}
print(goingOut("Faisal", on: "Friday"))
print(goingOut("Rounak", on: "Monday"))

// function with array as argument and void return type
func printArray(_ arr: [Int]){
    var listing = 1
    print("Array items: ")
    for item in arr {
        print(" \(listing): \(item)")
        listing+=1
    }
}
printArray([1, 2, 3, 5 ,7])

// function with multiple value to return
func findExtream(arr: [Int]) -> (max: Int, min: Int, sum: Int){
    var max = arr[0]
    var min = arr[0]
    var sum = 0
    for item in arr {
        if item > max{
            max = item
        } else if item < min {
            min = item
        }
        sum+=item
    }
    return (max, min, sum)
}
var extream = findExtream(arr: [100, 32, 54, 2, -3, -100, 352])
print("max = \(extream.max), min = \(extream.min), sum = \(extream.sum)")

// directly form the documentation
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
//    add()
    return y
}
print(returnFifteen())

// directly from the documentaion
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
print(increment(7))

// a typical javascript example
// here there is one optional string one string with some default value

//----------
// celeraence requred on ! oprator
// ---------
func ajaxLoad(_ url: String, method: String? = "get", data: String = "", onload: (String)->Any){
    let loadedData = url + " " + method! + " " + data
    print("Item loded")
    onload(loadedData)
}
func faisal(_ lodeddata: String) -> Bool{
    print(lodeddata)
    return true
}
print(ajaxLoad("http://www.Faisal-Manzer.in", data: "ok", onload: faisal))


