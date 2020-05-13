//
//  CalculatorModel.swift
//  CalcModel
//
//  Created by Fed on 4/11/20.
//  Copyright © 2020 Fed. All rights reserved.
//

import Foundation
import UIKit



enum calculationState
{
    case num1;
    case num2;
    case mathAction_Entered;
    case result;
    case clear;
}

class CalcModel
{
    var num1: String = "0"
    var num2: String = "0"
    var result: String = "0"
    var currentMathAction: String = ""
    var currentState = calculationState.clear
    
    
    func NUMBERS (_ inputNum: String)
    {
        let inputIsNonzeroDigit = inputNum >= "1" && inputNum <= "9"
        print("inputIsNonzeroDigit", num1, inputNum, inputIsNonzeroDigit)
        switch currentState {
        case .num1, .clear:
            currentState = calculationState.num1
            let newNum = num1 == "0" && inputIsNonzeroDigit ? inputNum : num1 + inputNum;
            print("newNum", newNum)
            if newNum.range(of: #"^-?(([1-9]\d*)?|\d)(\.\d*)?$"#, options: .regularExpression) != nil
            {
                num1 = newNum;
            }
        case .num2, .mathAction_Entered:
            currentState = calculationState.num2;
            let newNum = num2 == "0" && inputIsNonzeroDigit ? inputNum : num2 + inputNum;
            if newNum.range(of:#"^-?(([1-9]\d*)?|\d)(\.\d*)?$"#, options: .regularExpression) != nil
            {
                num2 = newNum;
            }
        case .result:
            num1 = inputNum;
            num2 = "0" //new
            currentState = calculationState.num1;
            result = "0";
        }
    }
    
    
    func MATH_ACTIONS (newSign: String)
    {
        switch currentState
        {
        case .clear:
            currentState = calculationState.clear; //useless
        case .num1:
            currentMathAction = newSign;
            currentState = calculationState.mathAction_Entered;
        case .mathAction_Entered:
            currentMathAction = newSign;
        case .num2:
            EQUAL()
            num1 = result
            num2 = "0"
            currentMathAction = newSign;
            currentState = calculationState.mathAction_Entered;
        case .result:
            currentMathAction = newSign;
            currentState = calculationState.mathAction_Entered;
            num1 = result;
            num2 = "0";
        }
    }
    

    func EQUAL()
    {
        let acceptableStates = [calculationState.mathAction_Entered, calculationState.num2, calculationState.result]
        if (acceptableStates.contains(currentState))
        {
            
            if (currentState == calculationState.mathAction_Entered)
            {
                num2 = num1;
                print("from num1: ",num1, currentMathAction, num2)
            }
            else if (currentState == calculationState.result)
            {
                num1 = result;
                print("from result: ", num1, currentMathAction, num2)
            }
            switch currentMathAction {
            case "/":
                result = num2 != "0" ? String(Double(num1)! / Double(num2)!): "Error";
            case "*":
                result = String(Double(num1)! * Double(num2)!);
            case "-":
                result = String(Double(num1)! - Double(num2)!);
            case "+":
                result = String(Double(num1)! + Double(num2)!);
            default:
                print("Error");
            }
            result = deleteFractionalPart(string: result)
            print (result)
            currentState = calculationState.result;
            num1 = result;
            //num2 = "0"; new
        }
    }
    
    func deleteFractionalPart(string: String) -> String
    {
        var str: String = string
        let index = str.index(str.endIndex, offsetBy: -2)
        let substring = str.suffix(from: index)
        if (substring == ".0")
        {
            str = str.replacingOccurrences(of: substring, with: "")
        }
        return str
    }
    /*
     func DOT ()
     {
     if !dotEntered
     {
     switch currentState {
     case .clear:
     num1 += ".";
     currentState = calculationState.num1;
     dotEntered = true;
     case .num1:
     let index = num1.index(num1.endIndex, offsetBy: -1)
     if (num1[index] != ".")
     {
     num1 += ".";
     dotEntered = true;
     }
     case .mathAction_Entered:
     num2 += ".";
     currentState = calculationState.num2;
     case .num2:
     let index = num2.index(num2.endIndex, offsetBy: -1)
     if (num2[index] != ".")
     {
     num2 += ".";
     }
     case .result:
     num1 = "0.";
     num2 = "0";
     result = "0";
     currentState = calculationState.num1;
     currentMathAction = "";
     
     }
     }
     }*/
    
    
    
    func PLUS_MINUS ()
    {
        if (currentState == calculationState.num1)
        {
            num1 = changeSign(string: num1);
        }
        else if (currentState == calculationState.num2)
        {
            num2 = changeSign(string: num2);
        }
        else if (currentState == calculationState.result)
        {
            num1 = changeSign(string: result);
            num2 = "0";
            result = "0";
            currentState = calculationState.num1;
            currentMathAction = "";
        }
    }
    
    func changeSign (string: String) -> String
    {
        var str: String = string;
        if (str[str.startIndex] == "-")
        {
            str.remove(at: str.startIndex);
        }
        else
        {
            str.insert("-", at: str.startIndex);
        }
        return str;
    }
    
    
    
    func DEL ()
    {
        switch currentState {
        case .clear:
            currentState = calculationState.clear //useless
        case .num1:
            num1.remove(at: num1.index(before: num1.endIndex))
            if (num1.isEmpty || num1 == "-")
            {
                num1 = "0"
            }
        case .mathAction_Entered:
            currentMathAction = "";
            currentState = calculationState.num1;
        case .num2:
            num2.remove(at: num2.index(before: num2.endIndex))
            if (num2.isEmpty || num2 == "-")
            {
                num2 = "0"
                currentState = .mathAction_Entered;
            }
        case .result:
            currentState = calculationState.num1;
            //let index = result.index(result.endIndex, offsetBy: -1)
            num1 = String(result.prefix(upTo: result.index(result.endIndex, offsetBy: -1)));
            num2 = "0";
            result = "0";
        }
        
    }
    
    
    func C ()
    {
        currentState = calculationState.clear;
        currentMathAction = "";
        num1 = "0";
        num2 = "0";
        result = "0";
    }
    
    
}

