//: Playground - noun: a place where people can play

import UIKit

var di = ["nombre": "Ada", "apellido": "Wong", "edad": 28] as [String: Any]

var keys = Array(di.keys)
var values = Array(di.values)

print(keys)
print(values)
print(di.count)

di.removeValue(forKey: "nombre")
print(di)
