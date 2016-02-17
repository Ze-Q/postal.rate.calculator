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
    @IBOutlet weak var widthTextBox: UITextField!
    @IBOutlet weak var heightTextBox: UITextField!
    @IBOutlet weak var depthTextBox: UITextField!
    @IBOutlet weak var weightTextBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // process the input to text fields so that user can only put in valid numbers
        self.widthTextBox.delegate = self
        self.heightTextBox.delegate = self
        self.depthTextBox.delegate = self
        self.weightTextBox.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func computeButtonIsPressed(sender: AnyObject) {
        print(widthTextBox.text!)
        print(heightTextBox.text!)
        print(depthTextBox.text!)
        print(weightTextBox.text!)
        
        if (heightTextBox.text! == "") {
            print("height is empty")
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