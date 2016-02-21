//
//  ViewController.swift
//  Postal Rate Calculator
//
//  Created by Ze Qian Zhang on 2016-02-16.
//  Copyright © 2016 zexception. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var computeButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var widthTextBox: UITextField!
    @IBOutlet weak var heightTextBox: UITextField!
    @IBOutlet weak var depthTextBox: UITextField!
    @IBOutlet weak var weightTextBox: UITextField!
    
    var rateComputer: RateComputer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.widthTextBox.delegate = self
        self.heightTextBox.delegate = self
        self.depthTextBox.delegate = self
        self.weightTextBox.delegate = self
        
        rateComputer = RateComputer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func computeButtonIsPressed(sender: AnyObject) {
        if (widthTextBox.text! == "") {
            resultLabel.text = "Error, width cannot be empty."
        } else if (heightTextBox.text! == "") {
            resultLabel.text = "Error, height cannot be empty."
        } else if (depthTextBox.text! == "") {
            resultLabel.text = "Error, depth cannot be empty."
        } else if (weightTextBox.text! == "") {
            resultLabel.text = "Error, weight cannot be empty."
        } else {
            let widthValue = Double(widthTextBox.text!)
            let heightValue = Double(heightTextBox.text!)
            let depthValue = Double(depthTextBox.text!)
            let weightValue = Double(weightTextBox.text!)
            
            let result = (rateComputer?.computePostalRate(widthValue!, height: heightValue!, depth: depthValue!, weight: weightValue!))!
            
            if (result.errorMessage == "") { //no error, the computation was successful
                resultLabel.text = "Cost: $" + String(result.cost)
            } else { //error, the computation failed
                resultLabel.text = result.errorMessage
            }
        }
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool { // return NO to not change text
        
        switch string {
        case "0","1","2","3","4","5","6","7","8","9":
            return true
        case ".":
            let array = Array(textField.text!.characters)
            var decimalCount = 0
            for character in array {
                if character == "." {
                    decimalCount++
                }
            }
            
            if decimalCount == 1 {
                return false
            } else {
                return true
            }
        default:
            let array = Array(string.characters)
            if array.count == 0 {
                return true
            }
            return false
        }
    }
}