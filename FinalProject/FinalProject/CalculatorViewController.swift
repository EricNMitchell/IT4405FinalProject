//
//  CalculatorViewController.swift
//  FinalProject
//
//  Created by Eric Mitchell on 5/10/19.
//  Copyright © 2019 Eric Mitchell. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var converters = [Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
                      Converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
                      Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
                      Converter(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")]
    
    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var outputDisplay: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputDisplay.text = converters[0].inputUnit
        outputDisplay.text = converters[0].outputUnit

        // Do any additional setup after loading the view.
    }
    
    @IBAction func chooseConverter(_ sender: Any) {
        let alert = UIAlertController(title: "", message: "Choose Converter", preferredStyle: UIAlertController.Style.actionSheet)
        alert.addAction(UIAlertAction(title: converters[0].label, style: UIAlertAction.Style.default, handler: {(alertAction) -> Void in
            //handle conversion 1
            self.inputDisplay.text = self.converters[0].inputUnit
            self.outputDisplay.text = self.converters[0].outputUnit
        }))
        alert.addAction(UIAlertAction(title: converters[1].label, style: UIAlertAction.Style.default, handler: {(alertAction) -> Void in
            // handle conversion 2
            self.inputDisplay.text = self.converters[1].inputUnit
            self.outputDisplay.text = self.converters[1].outputUnit
        }))
        alert.addAction(UIAlertAction(title: converters[2].label, style: UIAlertAction.Style.default, handler: {(alertAction) -> Void in
            // handle conversion 2
            self.inputDisplay.text = self.converters[2].inputUnit
            self.outputDisplay.text = self.converters[2].outputUnit
        }))
        alert.addAction(UIAlertAction(title: converters[3].label, style: UIAlertAction.Style.default, handler: {(alertAction) -> Void in
            // handle conversion 2
            self.inputDisplay.text = self.converters[3].inputUnit
            self.outputDisplay.text = self.converters[3].outputUnit
        }))
        
        self.present(alert, animated: true, completion: nil)

    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
