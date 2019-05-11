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
    
    func appendInput(_ newInput: String) -> String {
        // this function now appends numbers and the decimal point
        if (newInput == "." && isDouble == true) {
            // if inputString already has a decimal, do nothing
        } else if (newInput == "." && isDouble == false){
            isDouble = true
            inputString = inputString + newInput
        } else {
            inputString = inputString + newInput

        }
        return inputString
    }
    
    func changeSign() -> Double {
        
        // TO DO: fix this functionality since I'm storing the data as a String and not a double now
        
        
        inputNumber = inputNumber * -1
        
        return inputNumber
    }
    
    func clear() {
        self.inputNumber = 0.0
        self.inputString = ""
        self.isNegative = false
        self.isDouble = false
    }
}
