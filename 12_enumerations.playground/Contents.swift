import UIKit

enum someEnumeration {
    // Aqui iria la definicion del enumerado
}

enum CompassPoint: String {
    case north
    case south
    case east
    case west
}

//enum Planet {
//    case mercury, venus, earth, marse, jupiter, saturn, uranus, neptune
//}

enum Planet: Int {
    case mercury = 1, venus, earth, marse, jupiter, saturn, uranus, neptune
}

var directionToGo = CompassPoint.east
directionToGo = .north

switch directionToGo {
case .north:
    print("Hay que ir al norte")
case .south:
    print("Hay pinguinos sur")
case .east:
    print("Mordor se extiende hacia las tierras del este")
case .west:
    print("Cuidado con los vaqueros del oeste")
}

let somePlanet = Planet.earth
switch somePlanet {
case .earth:
    print("La tierra es segura")
default:
    print("No es seguro ir a este planeta")
}

enum Beverage: CaseIterable {
    case coffe, tea, juice, redbull
}
let numberOfChoices = Beverage.allCases.count
for beverage in Beverage.allCases {
    print(beverage)
}

enum Barcode{
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
//productBarcode = .qrCode("ASDFGHJKL")

switch productBarcode {
//case .upc(let numberSystem, let manufacturer, let product, let check):
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
case let .qrCode(producCode):
    print("QR: \(producCode)")
}

enum ASCIIControlCharacter: Character{
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}


let earthOrder = Planet.earth.rawValue

let northDirection = CompassPoint.north.rawValue


let possiblePlanet = Planet(rawValue: 5)

let planetPosition = 11
if let somePlanet = Planet(rawValue: planetPosition){
    switch anyPlanet {
    case .earth:
        print("La tierra es segura")
    default:
        print("No es seguro ir a este planeta")
    }
}else{
    print("El planeta indicado no existe ...")
}
