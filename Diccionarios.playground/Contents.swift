//: Playground - noun: a place where people can play

import UIKit

var di = ["nombre":"Ada", "estatura": 1.75, "edad": 32] as [String: Any]
var di1: [String: Any] = ["nombre":"Leon", "estatura": 1.85, "edad": 35]

var di2 = ["score1":43, "score2": 75, "score3": 32]
var di3: [String: Int] = ["score1": 43, "score2": 35]

var diVacio = [String: Int]()

print(di)

if di2 == di3 {
    print("Iguales")
} else {
    print("Diferentes")
}

if di2 is Dictionary<String, Int> {
    print("Sí es un diccionario")
}

