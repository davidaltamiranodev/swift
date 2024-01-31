import UIKit

func greeting(person: String) -> String {
    let greet = "Hola, \(person)!"
    return greet
}

greeting(person: "Ricardo")
greeting(person: "Ernesto")
greeting(person: "Paulo")

func sayHelloWorld() -> String {
    return "Hello World"
}

sayHelloWorld()
sayHelloWorld()
sayHelloWorld()

func greeting(person: String, isMale: Bool) -> String {
    if isMale{
        return "Bienvenido caballero \(person)"
    }else{
        return "Bienvenida seńorita \(person)"
    }
}

greeting(person: "Ricardo Celis", isMale: true)
greeting(person: "Sonia", isMale: false)

func greet2(person: String){
    print("Hola \(person)")
}

greet2(person: "Ricardo celis")
greet2(person: "Juan Gabriel")

func printAndCount(string: String) -> Int{
    print(string)
    return string.count
}

printAndCount(string: "Hola que tal;")


func printWithoutCounting(string: String){
    let _ = printAndCount(string: string)
}

printAndCount(string: "hola que tal")
printWithoutCounting(string: "Hola que tal")

func minMax(array: [Int]) -> (min: Int, max: Int)?{
    
    if array.isEmpty{ return nil}
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1...<array.count]{
        if value < currentMin{
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }
    }
    
    return(currentMin, currentMax)
}

let bounds = minMax(array: [6, 3, -8, 3, 1, 9, 5, 15, -9])
print("Los valores se halla entre \(bounds!.min) y \(bounds!.max)")
