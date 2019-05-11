//
//  CalculatorViewController.swift
//  FinalProject
//
//  Created by Eric Mitchell on 5/10/19.
//  Copyright © 2019 Eric Mitchell. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var calculator = Calculator()
    
    var converters = [Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
                      Converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
                      Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
                      Converter(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")]
    
    var selectedConverter: Converter?
    
    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var outputDisplay: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //changeSelectedConverter(converterNumber: 0)
        selectedConverter = converters[0]
        calculator.converter = selectedConverter
        inputDisplay.text = selectedConverter!.inputUnit
        outputDisplay.text = selectedConverter!.outputUnit
    }
    
    func changeSelectedConverter(converterNumber: Int) {
        selectedConverter = converters[converterNumber]
        calculator.converter = selectedConverter
        updateDisplay()
//        inputDisplay.text = selectedConverter!.inputUnit
//        outputDisplay.text = selectedConverter!.outputUnit

    }
    
    @IBAction func chooseConverter(_ sender: Any) {
        let alert = UIAlertController(title: "", message: "Choose Converter", preferredStyle: UIAlertController.Style.actionSheet)
        alert.addAction(UIAlertAction(title: converters[0].label, style: UIAlertAction.Style.default, handler: {(alertAction) -> Void in
            self.changeSelectedConverter(converterNumber: 0)
        }))
        alert.addAction(UIAlertAction(title: converters[1].label, style: UIAlertAction.Style.default, handler: {(alertAction) -> Void in
            self.changeSelectedConverter(converterNumber: 1)
        }))
        alert.addAction(UIAlertAction(title: converters[2].label, style: UIAlertAction.Style.default, handler: {(alertAction) -> Void in
            self.changeSelectedConverter(converterNumber: 2)
        }))
        alert.addAction(UIAlertAction(title: converters[3].label, style: UIAlertAction.Style.default, handler: {(alertAction) -> Void in
            self.changeSelectedConverter(converterNumber: 3)
        }))
        
        self.present(alert, animated: true, completion: nil)

    }
    
    @IBAction func numberPress(_ sender: UIButton) {
        calculator.appendInput(sender.titleLabel!.text!)
        updateDisplay()
//        self.inputDisplay.text = calculator.getInputString() + selectedConverter!.inputUnit
//        let outputString:String = String(format:"%.2f", calculator.convert())
//        self.outputDisplay.text = outputString + selectedConverter!.outputUnit
    }
    
    @IBAction func clearPress(_ sender: Any) {
        calculator.clear()
        inputDisplay.text = selectedConverter!.inputUnit
        outputDisplay.text = selectedConverter!.outputUnit
    }

    @IBAction func signPress(_ sender: Any) {
        calculator.changeSign()
        updateDisplay()
//        self.inputDisplay.text = calculator.getInputString() + selectedConverter!.inputUnit
//        let outputString:String = String(format:"%.2f", calculator.convert())
//        self.outputDisplay.text = outputString + selectedConverter!.outputUnit
    }
    
    func updateDisplay() {
        self.inputDisplay.text = calculator.getInputString() + selectedConverter!.inputUnit
        let outputString:String = String(format:"%.2f", calculator.convert())
        self.outputDisplay.text = outputString + selectedConverter!.outputUnit

    }
    
}
