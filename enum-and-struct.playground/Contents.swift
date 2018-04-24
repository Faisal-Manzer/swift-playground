// Created by Faisal Manzer

// trying to understand enum
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
print(ace)
print(aceRawValue)

var jack = Rank.jack
print(jack)
print(jack.rawValue)
jack = Rank.queen
print(jack.simpleDescription())

// understood some concept now will try to apply
// int type
enum Friends: Int{
    case Faisal
    case Rounak
    case Shubham, Sarav
    func disc(){
        switch self {
        case .Faisal:
            print("Faisal is great")
        case .Rounak:
            print("Rounak Cutiya hai")
        case .Shubham:
            print("Ku be Shubham")
        default:
            print(self.rawValue)
        }
    }
}

let faisal = Friends.Faisal
faisal.disc()
let rounak = Friends.Rounak.rawValue
print(rounak)
//print(Friends(rawValue: 1))

if faisal == .Rounak {
    print("OK")
}
else{
    print("NOT OK")
}

// rank 10 does not exist so it gives value nil which crosspind to false
if let rankTen = Friends(rawValue: 10){
    print("ok")
    print(rankTen)
}
else{
    print("not ok")
}

enum Suit {
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}

let someThing = Suit.clubs
//print(someThing.rawValue)
// raw value does not work instead hashValue work
print(someThing.hashValue)

// directly from documentation
enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
}

