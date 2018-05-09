//: Playground - noun: a place where people can play

import UIKit

var arreglo = ["X", "Y", "Z", "A", "B"]

for dato in arreglo {
    print(dato)
}

for(index,dato) in arreglo.enumerated() {
    print("Dato: \(dato), Índice: \(index)")
}
