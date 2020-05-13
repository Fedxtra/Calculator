//
//  ViewController.swift
//  CalcModel
//
//  Created by Fed on 3/25/20.
//  Copyright © 2020 Fed. All rights reserved.
//

import UIKit

/*class CalcController
{
    
    let Calculator = CalcModel();
    
    
    
    func refreshView()
    {
        /*switch Calculator.currentState {
        case .num1:
            label.text = Calculator.num1;
            
        case .mathAction_Entered:
            
        default:
            <#code#>
        }*/
    }
    
    
    
    func digitPressed(_ sender: UIButton)
    {
        print(sender.tag)
        Calculator.NUMBERS(inputNum: String(sender.tag));
        refreshView()
    }
    
    
//    @IBAction func C(_ sender: UIButton)
//    {
//        Calculator.C();
//    }
//
//
//    @IBAction func PLUS_MINUS(_ sender: UIButton)
//    {
//        Calculator.PLUS_MINUS();
//    }
//
//
//    @IBAction func DELETE(_ sender: UIButton)
//    {
//        Calculator.DEL();
//    }
//
//
//    @IBAction func mathActionEntered(_ sender: UIButton)
//    {
//        let inputSign: String?;
//        switch sender.tag
//        {
//        case 13:
//            inputSign = "/";
//        case 14:
//            inputSign = "*";
//        case 15:
//            inputSign = "-";
//        case 16:
//            inputSign = "+";
//        default:
//            inputSign = nil;
//        }
//        Calculator.MATH_ACTIONS(newSign: inputSign ?? "Error");
//    }
//
//    @IBAction func EQUAL(_ sender: UIButton)
//    {
//        Calculator.EQUAL();
//    }
//
//
//    @IBAction func DOT(_ sender: UIButton)
//    {
//        Calculator.DOT();
//    }
//
//
//    @IBOutlet weak var label: UILabel!
//
//
//
//    @IBOutlet weak var divideButton: UIButton!
//
//    @IBAction func toggledButton(_ sender: UIButton)
//    {
//        divideButton.isSelected.toggle();
//        if (divideButton.isSelected)
//        {
//            divideButton.backgroundColor = UIColor.red;
//        }
//        else if (!divideButton.isSelected)
//        {
//            divideButton.backgroundColor = UIColor.orange;
//        }
//    }
}*/



class ViewController: UIViewController {
    let model = CalcModel()
    
    @IBOutlet weak var mainLabel: CustomLabel!
    /*@IBAction func toggledButton(_ sender: UIButton)
    {
        divideButton.isSelected.toggle();
        if (divideButton.isSelected)
        {
            divideButton.backgroundColor = UIColor.red;
        }
        else if (!divideButton.isSelected)
        {
            divideButton.backgroundColor = UIColor.orange;
        }
    }*/
    
    @IBAction func onDigitPressed(_ sender: UIButton) {
        print(sender.tag)
        
        model.NUMBERS(String(sender.tag))
        self.refreshView()
    }
    @IBAction func onClearPressed(_ sender: UIButton) {
        model.C()
        refreshView()
    }
    
    
    @IBOutlet weak var divideButton: ToggleButton!
    @IBOutlet weak var multiplyButton: ToggleButton!
    @IBOutlet weak var plusButton: ToggleButton!
    @IBOutlet weak var minusButton: ToggleButton!
    
    
    
    @IBAction func onPlusBtnPressed(_ sender: UIButton)
    {
        model.MATH_ACTIONS(newSign: "+")
        refreshView()
    }
    
    @IBAction func onMinusBtnPressed(_ sender: UIButton)
    {
        model.MATH_ACTIONS(newSign: "-")
        refreshView()
    }
    
    @IBAction func onMultiplyBtnPressed(_ sender: UIButton)
    {
        model.MATH_ACTIONS(newSign: "*")
        refreshView()
    }
    @IBAction func onDivideBtnPressed(_ sender: UIButton)
    {
        model.MATH_ACTIONS(newSign: "/")

        refreshView()
    }
    
    
    
    @IBAction func onEqualPressed(_ sender: UIButton)
    {
        model.EQUAL()
        refreshView()
    }
    
    @IBAction func onDotBtnPressed(_ sender: UIButton)
    {
        model.NUMBERS(".");
        refreshView()
    }
    
    @IBAction func DEL(_ sender: UIButton)
    {
        model.DEL();
        refreshView();
    }

    
    @IBAction func onPlus_MinusBtnPressed(_ sender: UIButton)
    {
        model.PLUS_MINUS()
        refreshView()
    }
    func refreshView() {
        print("refreshView()", model.currentState)
        let isMathAction = model.currentState == calculationState.mathAction_Entered
        plusButton.setToggled(isMathAction && model.currentMathAction == "+")
        minusButton.setToggled(isMathAction && model.currentMathAction == "-")
        divideButton.setToggled(isMathAction && model.currentMathAction == "/")
        multiplyButton.setToggled(isMathAction && model.currentMathAction == "*")
//        if (isMathAction)
//        {
//            switch model.currentMathAction {
//            case "+":
//                plusButton.setToggled()
//            case "-":
//                minusButton.setToggled()
//            case "/":
//                divideButton.setToggled()
//            case "*":
//                multiplyButton.setToggled()
//            default:
//                print("How have you done it?")
//            }
//        }
        
        switch model.currentState {
        case .clear:
            mainLabel.text = model.result
        case .num1:
            mainLabel.text = model.num1
        case .num2:
            mainLabel.text = model.num2
        case .mathAction_Entered:
            print(model.currentMathAction)
            mainLabel.text = model.num1
        case .result:
            mainLabel.text = model.result
        }
    }
    
    
    
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        refreshView()
        mainLabel.updateLabel()
    }


}

