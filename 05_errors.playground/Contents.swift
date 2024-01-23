import UIKit

func canThrowError() throws{
    // Aquí hay codigo que puede causar un error
}

do {
    try canThrowError()
    // Si llegamos aqui, no ha habido error
}catch{
    // Si llegamos aqui, ha habido un error...
}


func makeASandwich() throws{
    
}

do {
    try makeASandwich()
    // Me como el sandwich
}catch{
    // tengo platos limpios... -> lavar los platos
    // Tengo ingredientes... -> deberia comprar ingredientes
    // Tengo hambre... ->
}


// Aserciones (debug) y precondiciones (buil) produccion

let age = -5
//assert(age>=0, "La edad de una persona no puede ser negativa")
precondition(age>=0, "La edad de una persona no puede ser negativa")
// ... aqui el codigo sigue

if age > 10{
    print("Puedes subir a la montańa rusa")
}else if age >= 0{
    print("Eres demasiado pequeńo para subir a la montańa rusa")
}else{
    assertionFailure("Eres demasiado pequeńo para subir a la montańa rusa")
}

