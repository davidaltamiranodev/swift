import UIKit

let orangeAreOrange = true
let foodIsDelicious = false

var isAged : Bool

isAged = false

if isAged {
    print("Puedes entrar en la fiesta")
}else{
    print("No puedes pasar a la fiesta")
}

var age = 31
if age >= 18{
    print("Puedes entrar en la fiesta")
}

// Tuplas
let http404Error = (404, "Página no encontrada")
let (statusCode, statusMessage) = http404Error
print("El codigo del estado es \(statusCode)")
print("El mensaje del servidor es \(statusMessage)")

let (justStatusCode, _) = http404Error
print("El codigo del estado es \(justStatusCode)")

print("El codigo del error es \(http404Error.0) y el mensaje es \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")
print("El codigo del estado es \(http200Status.statusCode) y el mensaje es \(http200Status.description)")

let possibleAge = "31"
let convertedAge = Int(possibleAge) // Int?

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer : String?

//print(surveyAnswer)

surveyAnswer = "42"
//print(surveyAnswer!)

if convertedAge != nil {
    print("La edad del usuario no es nula: \(convertedAge!)")
}else{
    print("La edad del usuario es nula")
}

// Se llama binding porque genera una variable a partir de la otra, la vincula si es posible

// se podria leer de la siguiten forma
// Si el optional surveyAnswer se puede convertir en un valor constante actualAnswer, el cual al ser nulo no puede ser constante, entonces
if let actualAnswer = surveyAnswer {
    // Al llegar aquí, surveryAnswer != nil
    print("El string \(surveyAnswer) tiene el valor \(actualAnswer)")
}else{
    // Al llegar aquí, surveryAnswer = nil
    print("El string \(surveyAnswer) es nil...")
}

if let firstNumber = Int("4"),
   let secondNumber = Int("42"),
   firstNumber < secondNumber && secondNumber < 100{
    print("\(firstNumber) < \(secondNumber) < 100")
}


//let possibleString: String? = "Un string opcional"
//let forcedString: String =  possibleString

let assumedString: String! = "Un string unwrapped de forma implicita a partir de un optional"

let implicitString: String = assumedString

if assumedString != nil {
    print(assumedString!)
}

if let definitiveString = assumedString {
    print(definitiveString)
}

//print(assumedString)
