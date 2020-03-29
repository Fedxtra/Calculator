//
//  ViewController.swift
//  CalcModel
//
//  Created by Fed on 3/25/20.
//  Copyright © 2020 Fed. All rights reserved.
//

import UIKit

class CalcModel
{
    var num1: Double = 0;
    var num2: Double = 0;
    let currentState = calculationState.clear;
    func NUMBERS (inputNum: Double)
    {
        if (currentState == calculationState.clear)
        {
            num1 = inputNum;
        }
        else if (currentState == calculationState.num1)
        {
            if (inputNum != 0 && num1 != 0)
            {
                num1 += inputNum;
            }
        }
        else if (currentState == calculationState.mathAction_Entered)
        {
            num2 = inputNum;
        }
        else if (currentState == calculationState.num2)
        {
            if (inputNum != 0 && num2 != 0)
            {
                num2 += inputNum;
            }
        }
        else if (currentState == calculationState.result)
        {
            num1 = inputNum;
        }
    }
    func DOT ()
    {
        var dotEntered: Bool;
        if (currentState == calculationState.clear)
        {
            dotEntered = true;
        }
        else if (currentState == calculationState.num1)
        {
            if
        }
        else if (currentState == calculationState.mathAction_Entered)
        {
                  
        }
        else if (currentState == calculationState.num2)
        {
                
        }
        else if (currentState == calculationState.result)
        {
               
        }
    }
    
    func PLUS_MINUS ()

    {
        if (currentState == calculationState.num1)
        {
            num1 *= -1;
        }
    }
}


enum calculationState
{
    case num1;
    case num2;
    case mathAction_Entered;
    case result;
    case clear;
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

