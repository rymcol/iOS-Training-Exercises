//
//  ViewController.swift
//  Calculator
//
//  Created by Ryan Collins on 9/20/15.
//  Copyright © 2015 Downeast Data. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var userIsInTheMiddleOfTypingANumber = false
    var brain = CalculatorBrain()

    var displayValue: Double? {
        get
        {
        return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        set
        {
        display.text = "\(newValue!)"
        userIsInTheMiddleOfTypingANumber = false
        }
    }
    
    @IBAction func apppendDigit(sender: UIButton) {
       
        let digit = sender.currentTitle!
        
        if (userIsInTheMiddleOfTypingANumber) {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    
    @IBAction func enter() {
        userIsInTheMiddleOfTypingANumber = false
        if let result = brain.pushOperand(displayValue!) {
            displayValue = result
        } else {
            display.text = "Error"
        }
    }
    
    
    @IBAction func clear() {
        display.text = "0"
        userIsInTheMiddleOfTypingANumber = false
        brain.clearStack()
    }
    
    @IBAction func operate(sender: UIButton) {
        if userIsInTheMiddleOfTypingANumber {
            enter()
        }
        if let operation =  sender.currentTitle {
            if let result = brain.performOperation(operation) {
                displayValue = result
            } else {
                display.text = "Error"
            }
        }
    }

} // End Controller

