import UIKit

let someString = "String literal" // String literal

// Si se usa un \ se evita que se haga un salto de linea
let multiLineString = """
    Este es un String multilinea\
    ocupa varias líneas.\
    No general problemas
"""

print(multiLineString)

let wiseWords = "\"La imaginación es más importante que el saber\" - Albert Einstein"
let dolarSign = "\u{24}"
let blackHeart = "\u{2665}"
let heart = "\u{1F496}"

var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Nada que ver aqui")
}else{
    print("el string tiene un valor")
}

var newSomeString = "Un caballo"
newSomeString += " y un carruaje"
newSomeString += " y un solado"

let aString = "Juan Gabriel"

var a  = "A"
var b = "B"
b = a
print("a vale \(a) y b vale \(b) ")
b = a
print("a vale \(a) y b vale \(b) ")
b = "C"
print("a vale \(a) y b vale \(b) ")
a = "D"
print("a vale \(a) y b vale \(b) ")

let name = "Juan Gabriel 😎"

for ch in name {
    print(ch)
}
print(name.count)

let exclamationMark : Character = "!"

let nameChars: [Character] = ["J", "u", "a", "n"]
var nameString = String(nameChars)

let compoundName = "Juan " + "Gabriel"

nameString.append(exclamationMark)

let multiplier = 3
var message = "El producto de \(multiplier) x 3.5 da \(Double(multiplier) * 3.5)"
message.append(exclamationMark)

let greeting = "hola, que tal?"
greeting[greeting.startIndex]
//greeting[greeting.endIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]

for idx in greeting.indices {
//    print("\(greeting[idx]) - \(idx)")
    print("\(greeting[idx]) ", terminator:"")
}

var welcome = "hola"

welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " que tal",
               at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))
welcome
let range = welcome.index(welcome.endIndex, offsetBy:
                            -7)..<welcome.endIndex
welcome.removeSubrange(range)
welcome
