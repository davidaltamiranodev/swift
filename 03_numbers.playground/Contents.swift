import UIKit

let age = 31
let age1 : UInt8 = 31 // se puede almacenar la edad en un entero de 8 bits en vez de usar 64 bits

let minValue = UInt8.min // 2 ** 0 - 1 entero sin signo mas pequeńo que puedo crear es cero (0)

let maxValue = UInt8.max // 2 ** 8 - 1 entero sin signo mas grande que puedo crear es 255 -> 256 valores contando desde cero (0)

let pi : Float = 3.14159265
let d1: Double = 3.14159265

let meaningOfLife = 42 // Int
let pi1 = 3.14159 // Double
let anotherPi = 3 + 0.14159 // Double

let decimalInteger = 17 // 1 * 10 + 7
let binaryInteger = 0b1001 // 1 * 2 ˆ 4 + 0 * 2 ˆ 3 + 0 * 2 ˆ 2 + 0 * 2 ˆ 1 + 1 * 2 ˆ 0

let octalInteger = 0o21 // 2 * 8 ˆ1 + 1 * 8 ˆ0
let hexadecimalInteger = 0x11 // 1 * 16 ˆ 1 + 1 * 16 ˆ 0

let decimalDouble = 12.1875
let exponentDouble = 1.2187e1
let hexadecimalDouble = 0xC.3p0

// Separar los miles o millones
let paddedDouble = 000123.456
let someNumber = 00000097.540
let oneMillion = 1_000_000
let justMoreThanAMillion = 1_000_000.000_000_1


// Errores de tipo de Dato
//let cannotBeNegative: UInt8 = -1
//let tooBig: UInt8 = UInt8.max + 4

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one) // Casteo de datos

let three = 3
let decimalNumber = 0.14159
let piNum = Double(three) + decimalNumber

let integerPi = Int(piNum)

typealias AudioSample = UInt16
var maxAmplitude = AudioSample.max // UInt16.max
