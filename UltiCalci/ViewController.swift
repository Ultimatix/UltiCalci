//
//  ViewController.swift
//  UltiCalci
//
//  Created by Niruta Talwekar on 26/04/16.
//  Copyright © 2016 ultimatix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var lableScreen: UILabel!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
   
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!

    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var nineBUtton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    //layer.borderWidth number 1
    
    var firstNumber: String = ""
    var secondNumber: String = ""
    var result: Double = 0.0
    var oprPresses: Int = 0
    var oprate:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lableScreen.layer.borderWidth = 1;
        oneButton.layer.borderWidth = 0.5;
        twoButton.layer.borderWidth = 0.5;
        threeButton.layer.borderWidth = 0.5;
        fourButton.layer.borderWidth = 0.5;
        fiveButton.layer.borderWidth = 0.5;
        sixButton.layer.borderWidth = 0.5;
        sevenButton.layer.borderWidth = 0.5;
        eightButton.layer.borderWidth = 0.5;
        nineBUtton.layer.borderWidth = 0.5;
        zeroButton.layer.borderWidth = 0.5;
        clearButton.layer.borderWidth = 1;
        multiplyButton.layer.borderWidth = 0.5;
        divideButton.layer.borderWidth = 0.5;
        plusButton.layer.borderWidth = 0.5;
        minusButton.layer.borderWidth = 0.5;
        equalButton.layer.borderWidth = 0.5;
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func onClear(){
        self.lableScreen.text = ""
        oprPresses = 0
        result = 0
        firstNumber = ""
        secondNumber = ""
    }
    @IBAction func onClearButton(sender: AnyObject) {
        onClear()
    }
    @IBAction func onOneButton(sender: AnyObject) {
      if(self.oprPresses == 0){
        self.firstNumber = self.firstNumber + "1"
            self.lableScreen.text = firstNumber
        }else if (self.oprPresses == 1){
            self.secondNumber = self.secondNumber + "1"
            self.lableScreen.text = secondNumber
        }

        
    }
    @IBAction func onTwoButton(sender: AnyObject) {
       if(self.oprPresses == 0){
            self.firstNumber = self.firstNumber + "2"
            self.lableScreen.text = firstNumber
        }else if (self.oprPresses == 1){
            self.secondNumber = self.secondNumber + "2"
            self.lableScreen.text = secondNumber
        }
    }
    @IBAction func onThreeBUtton(sender: AnyObject) {
       if(self.oprPresses == 0){
            self.firstNumber = self.firstNumber + "3"
            self.lableScreen.text = firstNumber
        }else if (self.oprPresses == 1){
            self.secondNumber = self.secondNumber + "3"
            self.lableScreen.text = secondNumber
        }
    }
    @IBAction func onFourButton(sender: AnyObject) {
        if(self.oprPresses == 0){
            self.firstNumber = self.firstNumber + "4"
            self.lableScreen.text = firstNumber
         }else if (self.oprPresses == 1){
            self.secondNumber = self.secondNumber + "4"
            self.lableScreen.text = secondNumber
        }
        
    }
    @IBAction func onFiveBUtton(sender: AnyObject) {
      if(self.oprPresses == 0){
            self.firstNumber = self.firstNumber + "5"
            self.lableScreen.text = firstNumber
        }else if(self.oprPresses == 1){
            self.secondNumber = self.secondNumber + "5"
            self.lableScreen.text = secondNumber
        }
        
    }
    @IBAction func onSixButton(sender: AnyObject) {
      if(self.oprPresses == 0){
            self.firstNumber = self.firstNumber + "6"
            self.lableScreen.text = firstNumber
        }else if(self.oprPresses == 1){
            self.secondNumber = self.secondNumber + "6"
            self.lableScreen.text = secondNumber
        }
    }
    @IBAction func onSevenButton(sender: AnyObject) {
        if(self.oprPresses == 0){
            self.firstNumber = self.firstNumber + "7"
            self.lableScreen.text = firstNumber
         }else if(self.oprPresses == 1){
            self.secondNumber = self.secondNumber + "7"
            self.lableScreen.text = secondNumber
        }
        
    }
    @IBAction func onEightButton(sender: AnyObject) {
       if(self.oprPresses == 0){
            self.firstNumber = self.firstNumber + "8"
            self.lableScreen.text = firstNumber
        }else if(self.oprPresses == 1){
            self.secondNumber = self.secondNumber + "8"
            self.lableScreen.text = secondNumber
        }
        
    }
    @IBAction func onNineButton(sender: AnyObject) {
       if(self.oprPresses == 0){
            self.firstNumber = self.firstNumber + "9"
            self.lableScreen.text = firstNumber
        }
        else if(self.oprPresses == 1){
            self.secondNumber = self.secondNumber + "9"
            self.lableScreen.text = secondNumber
        }
        
    }
    @IBAction func onZeroBUtton(sender: AnyObject) {
       if(self.oprPresses == 0){
            self.firstNumber = self.firstNumber + "0"
            self.lableScreen.text = firstNumber
        }else if(self.oprPresses == 1){
            self.secondNumber = self.secondNumber + "0"
            self.lableScreen.text = secondNumber
        }

    }
    
    @IBAction func onPlusButton(sender: AnyObject) {
 
        self.oprPresses = 1
        self.oprate = "+"
        
    }
    
    @IBAction func onMinusButton(sender: AnyObject) {

        self.oprPresses = 1
        self.oprate = "-"
    
        
    }
    @IBAction func onMultiplyButton(sender: AnyObject) {

        self.oprPresses = 1
        self.oprate = "*"
        
    }
    
    @IBAction func onDivideButton(sender: AnyObject) {
       
        self.oprPresses = 1
        self.oprate = "/"
        
    }
    
    @IBAction func onEqualButton(sender: AnyObject) {
       switch self.oprate {
        case "+":
            self.result = Double(self.firstNumber)! + Double(self.secondNumber)!
            print(self.result)
        case "-":
            self.result = Double(self.firstNumber)! - Double(self.secondNumber)!
            print(result)
        case "*":
            self.result =  Double(self.firstNumber)! * Double(self.secondNumber)!
            print(result)
        case "/":
            self.result = Double(self.firstNumber)! / Double(self.secondNumber)!
            print(result)
        default:
            print("Bad operation")
        }

        lableScreen.text = String(self.result)

    }
    
    
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

