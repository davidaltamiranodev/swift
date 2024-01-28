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


