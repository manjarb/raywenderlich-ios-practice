let coordinates = (x:2, y:3)
coordinates.y

let coordinates3D = (x: 2, y: 3, z: 1)
let (_,y3,_) = coordinates3D
y3

typealias Coordinates = (Int, Int)
let xy: Coordinates = (2, 5)
xy.1

let animal = "Pra"

if 2 > 1 || animal == "po" {
    print("oaeoae")
}

let closedRange = 0...5
for i in closedRange {
    print(i)
}

let number = 10
switch number {
case 0, 2, 3:
    print("Zero")
default:
    print("No Zero")
}

func printMyName() {
    print("My name is Valll")
}
printMyName()

func printMultipleOfFive(value: Int) {
    print("\(value) * 5 = \(value * 3)")
}

printMultipleOfFive(value: 5)

var result: Int? = 20
print(result)

if let unwrappedResult = result {
    print("R is \(unwrappedResult)")
}

let vowels = ["A", "B", "C", "D"]
print(vowels.isEmpty)

var namesAndScores = ["Anna": 2, "Brian": 2, "Craig": 9]
for(p, sc) in namesAndScores {
    print("p: \(p)")
    print("sc: \(sc)")
}

var multiplyClosure = { (a: Int, b: Int) -> Int in
    return a * b
}

let result2 = multiplyClosure(4,2)
print(result2)

let string = "WVris"
for c in string {
    print(c)
}

struct Location {
    let x: Int
    let y: Int
}

let storeLocation = Location(x: 3, y: 5)
print(storeLocation.y)

struct DeliveryArea {
    let center: Location
    var radius: Double
}

var storeArea = DeliveryArea(center: storeLocation, radius: 3.2)
print(storeArea.radius)

enum Month: String {
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
}

print(Month.february.rawValue)
