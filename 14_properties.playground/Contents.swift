import UIKit

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)

rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)

// rangeOfFourItems.firstValue = 5 ESTO DA ERROR...

class DataImporter{
    var filename = "data.text"
}

class DataManager{
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Algo de datos")
manager.data.append("Muchos mas datos")
manager
// Hasta esta linea, el importer no ha sido creado...
manager.importer.filename
// Aquí la variable importer ya ha sido creada
manager


struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point{
        get(
            let centerX = origin.x + size.width / 2
            let centerY = origin.y + size.height / 2
            return Point(x: centerX, y: centerY)
        )
        set(newCenter){
            origin.x = newCenter.x - size.width / 2
            origin.y = newCenter.y - size.height /2
        }
    }
}

var square = Rect(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 10))
square.center

let initialSquareCenter = square.center
square.center = Point(x: 20, y: 20)

struct Cuboid {
    var width = 0.0, heigth = 0.0, depth = 0.0
    var volume: Double{
            return width * height * depth
    }
}

let cuboid = Cuboid(width: 4.0, heigth: 5.0, depth: 2.0)
cuboid.volume
// cuboid.volume = 57.0 error, puesto que la variable es de solo lectura


// willset // didset

class StepCounter {
    var totalSteps: Int = 0{
        willSet(newTotalSteps){
            print("El número de pasos va a subir hasta \(newTotalSteps)")
        }didSet{
            if totalSteps > oldValue{
                print("El número de pasos ha incrementado en \(totalSteps - oldValue)")
            }
        }
    }
}

let stepCounter = StepCounter()

stepCounter = 200
stepCounter.totalSteps = 520
stepCounter.totalSteps += 1234

struct someStruct {
    var counter = 0
    static var storedTypeProperty = "SOME VALUE"
    static var computerTyperProperty: Int {
        return 1
    }
}

var instanceStr = SomeStruct()

var otherInstanceStr = SomeStruct()

enum SomeEnum {
    static var storedTypeProperty = "SomeValue"
    static var computedTypeProperty: Int {
        return 5
    }
}

SomeEnum.storedTypeProperty

class SomeClass {
    static var storedTypeProperty = "Some Value"
    static var computedTypeProperty: Int{
        return -9
    }
    
    class var overrideableComputedTypeProperty: Int {
        return 108
    }
}
