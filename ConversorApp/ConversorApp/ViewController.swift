//
//  ViewController.swift
//  ConversorApp
//
//  Created by Mac Tecsup on 24/05/18.
//  Copyright © 2018 Tecsup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var initialValue: UITextField!
    @IBOutlet weak var fromSegment: UISegmentedControl!
    @IBOutlet weak var toSegment: UISegmentedControl!
    @IBOutlet weak var finalValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func convert(_ sender: UIButton) {
        
        if(Double(initialValue.text!) != nil){
            let numero: Double = Double(initialValue.text!)!
            var resultado: Double = 0.0
            
            switch (fromSegment.selectedSegmentIndex) {
            case 0: //fromMillas
                resultado = millasConverter(inicial: numero, toSegment: toSegment.selectedSegmentIndex)
                
                finalValue.text = " \(fixData(valor: numero)) \(getType(index: fromSegment.selectedSegmentIndex)) = \(fixData(valor: resultado)) \(getType(index: toSegment.selectedSegmentIndex))"
                
                break
            case 1: //fromKilómetros
                resultado = kmConverter(inicial: numero, toSegment: toSegment.selectedSegmentIndex)
                
                finalValue.text = " \(fixData(valor: numero)) \(getType(index: fromSegment.selectedSegmentIndex)) = \(fixData(valor:resultado)) \(getType(index: toSegment.selectedSegmentIndex))"
                
                break
            case 2: //fromYardas
                resultado = yardConverter(inicial: numero, toSegment: toSegment.selectedSegmentIndex)
                
                finalValue.text = " \(fixData(valor: numero)) \(getType(index: fromSegment.selectedSegmentIndex)) = \(fixData(valor:resultado)) \(getType(index: toSegment.selectedSegmentIndex))"
                
                break
            case 3: //fromPies
                resultado = feetConverter(inicial: numero, toSegment: toSegment.selectedSegmentIndex)
                
                finalValue.text = " \(fixData(valor: numero)) \(getType(index: fromSegment.selectedSegmentIndex)) = \(fixData(valor:resultado)) \(getType(index: toSegment.selectedSegmentIndex))"
                
                break
            default:
                // Do nothing
                break
            }
        }else{
            finalValue.text = "Verifica tu valor"
        }
    }
    
    func getType(index:Int) -> String {
        var res:String = ""
        
        switch index {
        case 0:
            res = "Millas"
            break
        case 1:
            res = "Kms"
            break
        case 2:
            res = "Yardas"
            break
        case 3:
            res = "Pies"
            break
        default:
            //Do nothing
            break
        }
        
        return res
    }
    
    func yardConverter(inicial:Double, toSegment:Int) -> Double {
        var resultado:Double = 0.0
        
        switch toSegment {
        case 0: //toMillas
            resultado = yardtomill(valor: inicial)
            break
        case 1: //toKilómetros
            resultado = yardtokm(valor: inicial)
            break
        case 2: //toYardas
            resultado = inicial
            break
        case 3: //toPies
            resultado = yardtofeet(valor: inicial)
            break
        default:
            //Do nothing
            break
        }
        
        return resultado
    }
    
    func kmConverter(inicial:Double, toSegment:Int) -> Double {
        var resultado:Double = 0.0
        
        switch toSegment {
        case 0: //toMillas
            resultado = kmtomill(valor: inicial)
            break
        case 1: //toKilómetros
            resultado = inicial
            break
        case 2: //toYardas
            resultado = kmtoyard(valor: inicial)
            break
        case 3: //toPies
            resultado = kmtofeet(valor: inicial)
            break
        default:
            //Do nothing
            break
        }
        
        return resultado
    }
    
    func millasConverter(inicial:Double, toSegment:Int) -> Double {
        var resultado:Double = 0.0
        
        switch toSegment {
        case 0: //toMillas
            resultado = inicial
            break
        case 1: //toKilómetros
            resultado = milltokm(valor: inicial)
            break
        case 2: //toYardas
            resultado = milltoyard(valor: inicial)
            break
        case 3: //toPies
            resultado = milltofeet(valor: inicial)
            break
        default:
            //Do nothing
            break
        }
        
        return resultado
    }
    
    func feetConverter(inicial:Double, toSegment:Int) -> Double {
        var resultado:Double = 0.0
        
        switch toSegment {
        case 0: //toMillas
            resultado = feettomill(valor: inicial)
            break
        case 1: //toKilómetros
            resultado = feettokm(valor: inicial)
            break
        case 2: //toYardas
            resultado = feettoyard(valor: inicial)
            break
        case 3: //toPies
            resultado = inicial
            break
        default:
            //Do nothing
            break
        }
        
        return resultado
    }
    
    func fixData(valor:Double) -> String {
        return String(format: "%.2f", valor)
    }
    
    //From Kilómetros
    func kmtomill(valor:Double) -> Double {
        return valor*0.621371
    }
    
    func kmtoyard(valor:Double) -> Double {
        return valor*1093.61
    }
    
    func kmtofeet(valor:Double) -> Double {
        return valor*3280.84
    }
    
    //From Millas
    func milltokm(valor:Double) -> Double {
        return valor*1.60934
    }
    
    func milltoyard(valor:Double) -> Double {
        return valor*1760
    }
    
    func milltofeet(valor:Double) -> Double {
        return valor*5280
    }
    
    //From Yardas
    func yardtokm(valor:Double) -> Double {
        return valor*0.0009144
    }
    
    func yardtomill(valor:Double) -> Double {
        return valor*0.000568182
    }
    
    func yardtofeet(valor:Double) -> Double {
        return valor*3
    }
    
    //From Pies
    func feettokm(valor:Double) -> Double {
        return valor*0.0003048
    }
    
    func feettomill(valor:Double) -> Double {
        return valor*0.000189394
    }
    
    func feettoyard(valor:Double) -> Double {
        return valor*0.333333
    }
    
    func setResult( label:UILabel, initialValue:Double, fromValue:Int, toValue:Int, finalValue:Double) {
        label.text = " \(fixData(valor: initialValue)) \(getType(index: fromValue)) = \(fixData(valor: finalValue)) \(getType(index: toValue))"
    }
}

