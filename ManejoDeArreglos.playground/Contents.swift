//: Playground - noun: a place where people can play

import UIKit

var arregloVacío = [String]()
var arregloDos = ["A", "B", "C"]

arregloVacío += ["Mario", "Luigi", "Peach"]
print(arregloVacío)

arregloVacío += arregloDos
print(arregloVacío)

arregloVacío = arregloVacío.reversed()
print(arregloVacío)
