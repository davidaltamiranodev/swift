import UIKit

// Array
//COnjuntos
//Diccionarios

// Array
//var someInts: [Int]
var someInts = [Int]()
someInts.count
someInts.append(31)
someInts.count
someInts = []
someInts.count

var someDoubles = Array(repeating: 3.141592, count: 7)
someDoubles.count

var moreDoubles = Array(repeating: 2.5, count: 3)

var aLotOdDoubles = someDoubles + moreDoubles
aLotOdDoubles.count

var shoppingList : [String] = ["papas", "Pimiento",
                               "Tortillas", "Cerdo", "Cebolla"]
shoppingList.count

if shoppingList.isEmpty {
    print("La lista de la compra está vacía")
}else{
    print("Mandemos a Ricardo a comprar")
}

shoppingList.append("Manzana")
shoppingList.count

shoppingList += ["Totopos", "Guacamole", "Pico de Gallo"]
shoppingList.count

var firstElement = shoppingList[0]
shoppingList[0] = "Huevos"
shoppingList
shoppingList[5]
shoppingList[4...6]
shoppingList[4...6] = ["Naranja", "Platano", "Mango"]
shoppingList


let pepper = shoppingList.remove(at: 1)
shoppingList

let _ = shoppingList.removeLast()
shoppingList

for item in shoppingList{
    print(item)
}

for(idx, item) in shoppingList.enumerated(){
    print("Item: \(idx + 1): \(item) ")
}



// Conjunto(Set)

