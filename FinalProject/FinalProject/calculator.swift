//
//  calculator.swift
//  FinalProject
//
//  Created by Eric Mitchell on 5/10/19.
//  Copyright © 2019 Eric Mitchell. All rights reserved.
//

import Foundation

class Calculator {
    
    var converter: Converter?
    
    var inputNumber: Double = 0.0
    var inputString: String = ""
    var isNegative: Bool = false
    var isDouble: Bool = false
    
    func appendInput(_ newInput: String) {
        // this function appends numbers and the decimal point
        if (newInput == "." && isDouble == true) {
            // if inputString already has a decimal, do nothing
        } else if (newInput == "." && isDouble == false){
            isDouble = true
            inputString = inputString + newInput
        } else {
            inputString = inputString + newInput
        }
    }
    
    func changeSign(){
        if (isNegative == true) {
            isNegative = false
        } else {
            isNegative = true
        }
    }
    
    func getInputString() -> String {
        if (isNegative == true){
            return "-\(inputString)"
        }
        return inputString
    }
    
    func clear() {
        self.inputNumber = 0.0
        self.inputString = ""
        self.isNegative = false
        self.isDouble = false
    }
    
    func convert() -> Double {
        // this function returns output data
        if (isNegative == true){
            inputNumber = (Double(inputString)! * -1)
        } else {
            inputNumber = Double(inputString)!
        }
        
        switch converter!.inputUnit {
        case "°F":
            // convert from F to C
            return ((inputNumber-32)*(5/9))
        case "°C":
            // convert from C to F
            return ((inputNumber*(9/5))+32)
        case "mi":
            // convert from mi to km
            return (inputNumber * 1.609334)
        case "km":
            // convert from km to mi
            return (inputNumber / 1.609334)
        default:
            return 0.0
            
        }
        
    }
}
