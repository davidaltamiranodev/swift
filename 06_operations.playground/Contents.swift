import UIKit

let b = 10
var a = 5
a = b

let (x, y) = (1, 2)

if a == b {
    print("Los valores de a y b son iguales")
}

1 + 2
5 - 3
2 * 3
10.0 / 2.5

"Hello " + "World"

// D / d -> D == d * c + r
9 / 4 // c -> cociente
9 % 4 // r -> resto

9 == 4 * 2 + 1

-9 % 4 // -9 == -2 * 4 + (-1)

let five = 5
let minusFive = -five
let plusFive = -minusFive

let minusSix = -6
let alsoMinusSix = +minusSix

var number = 5
number += 3 // number = number + 3
number -= 2 // number = number - 2
number *= 4 // number = number * 4
number /= 2 // number = number / 2

1 == 1
1 == 2
1 != 2
2 > 1
2 < 1
2 >= 1
1 >= 1
2 <= 1

let name = "Juan Gabriel"

if name == "Juan Gabriel" {
    print("Bienvenido \(name), eres invitado a la fiesta")
}else{
    print("Cuidado, ha aparecido un \(name) salvaje")
}


(1, "Juan Gabriel") < (2, "Ricardo Celis")
(3, "Juan Gabriel") < (3, "Ricardo Celis")
(3, "Ricardo") < (3, "Juan gabriel")
(31, "David") < (31, "Juan Gabriel")


/**
 if question {
    answer1
 }else{
    answer2
 }
 */

let contentHeight = 40
var hasImage = true
var rowHeight = 0
/* if hasImage {
    rowHeight = contentHeight + 50
}else{
    rowHeight = contentHeight + 10
}*/

// Operador ternario
rowHeight = contentHeight + (hasImage ? 50 : 10)


let defaultAge = 18
var userAge: Int?

var ageToBeUsed = userAge ?? defaultAge
// ageToBeUsed = (userAge != nil ? userAge! : defaultAge)

let defaultColorName = "red"
var userColorname: String? = "green"

var colornameToUse = userColorname ?? defaultColorName

for idx in 1...5{
    print(idx)
}

for i in 1..<10{
    print(i)
}

let names = ["Ricardo", "Juan Gabriel", "Pedro"]
for i in 0..<names.count{
    print("La persona \(i + 1) se llama \(names[i])")
}

for name in names[1...]{
    print(name)
}

for name in names[...2]{
    print(name)
}

let range = ...5
range.contains(7)
range.contains(4)
range.contains(-2)


let allowEntry = false

if !allowEntry{
    print("ACCESO DENEGADO")
}

let enterDoorCode = true
let passRetinaScan = false

if enterDoorCode && passRetinaScan {
    print("Bienvenido a la empresa")
}else{
    print("ACCESO DENEGADO")
}

let hasMoney = true
let hasInvitation = false

if hasMoney || hasInvitation {
    print("Bienvenido a la fiesta")
}else{
    print("No eres bienvenido aqui...")
}

