import UIKit

// 1. Global functions
// 2. Nested functions (anidadas)
// 3. Closure



let names = ["Christian", "Ricardo", "Juan Gabriel", "Edgar", "Freddy"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
backward("Juan Gabriel", "Ricardo")

var reversedNames = names.sorted(by: backward)

/**
    { (params) -> return type in
        // Código del closure
    }
 */


// Diferentes formas de escribir la funcion, mas simplificado usando closure

//reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 })
//reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 })
//reversedNames = names.sorted(by: { s1, s2 in s1 > s2 })
//reversedNames = names.sorted(by: { $0 > $1 })
reversedNames = names.sorted(by: >)

func someFunctionThatTakesAClosure(closure: () -> Void){
    // Aqui iria el cuerpo de la funcion
}

someFunctionThatTakesAClosure(closure: {
    // Aqui iria el cuerpo del closure
})

someFunctionThatTakesAClosure{
    // Añadir el closure aqui
}


reversedNames = names.sorted{$0 > $1}

let digitNames = [0: "Cero", 1: "Uno", 2: "Dos", 3: "Tres", 4: "Cuatro", 5: "Cinco", 6: "Seis",               7: "Siete", 8: "Ocho", 9: "Nueve"]
let numbers = [16, 58, 510, 2127]

let numberStrings = numbers.map { (number) -> String in
    
    var number = number
    var output = ""
    repeat{
        output = digitNames[number % 10]! + output
        number /= 10
    }while number > 0
    return output
}

func makeIncrementer(forceIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    
    return incrementer
}

let incrementByTen = makeIncrementer(forceIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementer(forceIncrement: 7)
incrementBySeven()

incrementByTen()


var completionHandler: [() -> Void] = []

func someFunctionWithEscapingClosure(completionHandler: @escaping() -> Void){
    completionHandlers.append(completionHandler)
}
completionHandler.count

func someFunctionWithNonEscapingClosure(closure: () -> Void){
    closure()
}

class someClass {
    var x = 10
    func doSomething(){
        someFunctionWithEscapingClosure {
            selfx = 100
        }
        someFunctionWithNonEscapingClosure {
            x = 200
        }
    }
}

let instance = someClass()
print(instance.x)

instance.doSomething()
print(instance.x)

completionHandler.count
completionHandler.first?()
print(instance.x)
