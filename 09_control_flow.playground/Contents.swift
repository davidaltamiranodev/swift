import UIKit

let names = ["Ricardo Celis", "Juan Gabriel", "Edgar"]

// Bucle For

for name in names {
    print("Hola \(name)")
}


let numberOfLegs = ["spider": 8, "ant": 6, "dog": 4]

for (animalName, legCount) in numberOfLegs{
    print("Animal: \(animalName): número de patas: \(legCount)")
}

for idx in 1...5{
    print("\(idx) x 3 = \(idx * 3)")
}

let base = 2
let power = 10
var answer = 1

for _ in 0..<power{
    answer *= base
    print(answer)
}

var hour = 9
let minutes = 60
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    print("\(hour) : \(tickMark)")
}

// Bucle While

var i = 0
while i <= 10{
    print(i)
    i += 1
}

repeat {
    print(i)
    i += 1
} while i <= 20


// if y else
var temp = 13
if temp <= 15{
    print("Hace frio! Enciende la calefaccion")
}else if temp >= 25{
    print("Hace calor, encendamos el aire acondicionado")
}else{
    print("La sensacion termica es agradable")
}

// Switch
let someCharacter: Character = "z"
switch someCharacter{
    case "a", "A":
        print("Es la primera letra del alfabeto")
    //case "A":
    //    print("Es la primera letra del alfabeto")
    case "z", "Z":
        print("Es la ultima letra del alfabeto")
    default:
        print("Es alguna otra letra")
}

let moons = 62
let phrase = "lunas en Saturno"
let naturalCount : String
switch moons{
case 0:
    naturalCount = "No hay"
case 1..<5:
    naturalCount = "Hay unas pocas"
case 5..<12:
    naturalCount = "Hay bastantes"
case 12..<100:
    naturalCount = "Hay decenas de "
case 100..<1000:
    naturalCount = "Hay centenares"
default:
    naturalCount = "Hay muchisimas"
}

print("\(naturalCount) \(phrase)")


let somePoint = (1, 1)
switch somePoint{
    case (0, 0):
        print("El punto \(somePoint) es el origen de coordenadas")
    case (_, 0):
        print("EL punto \(somePoint) se halla sonre el eje de las X")
    case (0, _):
        print("El punto \(somePoint) se halla sobre el eje de las Y")
    case (-2...2, -2...2):
        print("El punto \(somePoint) se halla en el interior del cuadrado de lado 4")
    default:
        print("El punto \(somePoint) esta en algun otro lado")
}

let anotherPoint = (2, 0)
switch anotherPoint{
    case (let x, 0):
        print("Sobre el eje de las X, con valo \(x)")
    case (0, let y):
        print("Sobre el eje de las Y, con valor de \(y)")
    case let(x, y) where x == y:
        print("El punto se halla sobre la recta x = y")
    case let(x, y) where x == -y:
        print("El punto se halla sobre la recta x = -y")
    case let(x, y):
        print("En algun otro lugar del plamno, en \(x), \(y)")
}

let someCharacter1 : Character = "e"
switch someCharacter1{
case "a", "e", "i", "o", "u":
    print("Se trata de una vocal")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("Se trata de una consonantes")
default:
    print("Se trata de un caracter no vocal ni consonante (minuscula)")
}

let stillAnotherPoint = (9, 0)
switch stillAnotherPoint{
case (let distance, 0), (0, let distance):
    print("Se hala sobre el eje, a distancia \(distance) del origen")
default:
    print("no esta sobre el eje")
    break
}


// Control transfer sentences - continue, break, fallthrough, return, throw

let sentence = "Las mentes grandes piensan igual"
var filteredSentences = ""
let charactersToRemove:[Character] = ["a", "e", "i", "o", "u"]

for ch in sentence{
    if charactersToRemove.contains(ch){
        continue
    }
    filteredSentences.append(ch)
    if ch == "d"{
        break
    }
}
filteredSentences

let integerToDescribe = 5
var description = "el numero \(integerToDescribe) es"
switch integerToDescribe{
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += "un numero primo y"
    fallthrough
default:
    description += "y un numero entero"
}

print(description)

var people = ["name": "Juan gabriel", "age": 31, "isMale": true] as [String " Any"]

func testUserValidation(person:[String: Any]){
    guard let surname = person["surname"] else{
    //    print(surname)
        return
        guard let age = person["age"]else {
            return
        }
        print("La edad de la persona es\(age)")
    }
}

//people["surname"] = "Gomila"
//testUserValidation(person: people)

testUserValidation(person: people)
// Aqui existe surname

if #available(iOS 12, macOS 10.12, *){
    // Ejecutar las acciones a lo iOS+, los de los macsOS12+
}else{
    // Mantener el codigo viejo con versiones anteeriores de iOS, macOS...
}

