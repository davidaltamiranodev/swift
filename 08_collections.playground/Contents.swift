import UIKit

// Array
//COnjuntos
//Diccionarios

// Array
//var someInts: [Int]
var someInts = [Int]()
someInts.count
someInts.append(31)
someInts.count
someInts = []
someInts.count

var someDoubles = Array(repeating: 3.141592, count: 7)
someDoubles.count

var moreDoubles = Array(repeating: 2.5, count: 3)

var aLotOdDoubles = someDoubles + moreDoubles
aLotOdDoubles.count

var shoppingList : [String] = ["papas", "Pimiento",
                               "Tortillas", "Cerdo", "Cebolla"]
shoppingList.count

if shoppingList.isEmpty {
    print("La lista de la compra está vacía")
}else{
    print("Mandemos a Ricardo a comprar")
}

shoppingList.append("Manzana")
shoppingList.count

shoppingList += ["Totopos", "Guacamole", "Pico de Gallo"]
shoppingList.count

var firstElement = shoppingList[0]
shoppingList[0] = "Huevos"
shoppingList
shoppingList[5]
shoppingList[4...6]
shoppingList[4...6] = ["Naranja", "Platano", "Mango"]
shoppingList


let pepper = shoppingList.remove(at: 1)
shoppingList

let _ = shoppingList.removeLast()
shoppingList

for item in shoppingList{
    print(item)
}

for(idx, item) in shoppingList.enumerated(){
    print("Item: \(idx + 1): \(item) ")
}



// Conjunto(Set)
var letters = Set<Character>()
letters.count
letters.insert("a")
letters.insert("h")
letters.insert("b")

//var favouriteGames: Set<String> = []
//favouriteGames.count

var favouriteGames : Set<String> = ["Final Fantasy", "World of Warcraft", "Farcry"]
favouriteGames.count

if favouriteGames.isEmpty{
    print("No hay juegos favoritos")
}

favouriteGames.insert("Metal Gear")

if let removedGame = favouriteGames.remove("Farcry"){
    print("He eliminado de la lista \(removedGame)")
}else{
    print("no ha sido posible eliminar de la lista")
}

if favouriteGames.contains("Metal Gear"){
    print("Me encanta ese juego")
}

for vg in favouriteGames.sorted() {
    print(vg)
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let primeNumbers: Set = [2, 3, 5, 7]

// A union B = elementos que son o bien de A, o bien de B o de los dos
oddDigits.union(evenDigits).sorted()
// A interseccion B = elementos que son a la vez de A y de B
oddDigits.intersection(evenDigits)
evenDigits.intersection(primeNumbers).sorted()
oddDigits.intersection(primeNumbers).sorted()

// A - B = elementos que son de A pero no de B
oddDigits.subtracting(primeNumbers).sorted()

// A + B = (A - B) union (B - A)
oddDigits.symmetricDifference(primeNumbers).sorted()

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals : Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals : Set = ["🐀", "🕊️"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
// A y B son disjuntos si su interseccion es vacía
farmAnimals.isDisjoint(with: cityAnimals)


// Diccionarios [k1:v1, k2:v2, ...]

var nameOfIntegers = [Int : String]()
nameOfIntegers[15] = "quince"
nameOfIntegers = [:]

var airports: [String: String] = ["YYZ": "Toronto",
                                  "DUB": "Dublin",
                                  "PMI": "Palma de Mallorca"
]

airports.count

airports.isEmpty
airports["LHR"] = "London City Airport"
airports
airports["LHR"] = "London Heathrow"
airports

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("El aeropuerto tenia antiguamente el nombre de \(oldValue)")
}
airports

if let airportName = airports["DUB"]{
    print("El aeropuerto de DUB es: \(airportName)")
}

airports["PMI"] = nil
airports

if let removeAirports = airports.removeValue(forKey: "DUB"){
    // usar la variable removed airport
}

airports

for (key, value) in airports{
    print("\(key) - \(value)")
}

for airportKey in airports.keys{
    print(airportKey)
}

for airportName in airports.values{
    print(airportName)
}

let airportKeys = [String](airports.keys.sorted())
let airportNames = [String](airports.values.sorted())


