//
//  CalcModelTests.swift
//  CalcModelTests
//
//  Created by Fed on 3/25/20.
//  Copyright © 2020 Fed. All rights reserved.
//

import XCTest
@testable import CalcModel

class CalcModelTests: XCTestCase
{
    func testChangeMathAction()
    {
        let model = CalcModel()
        model.NUMBERS("7")
        model.MATH_ACTIONS(newSign: "+")
        model.MATH_ACTIONS(newSign: "-")
        model.NUMBERS("3")
        model.EQUAL()
        XCTAssertEqual("4", model.result)
    }
    func testMathActionAfterResult()
    {
        let model = CalcModel()
        model.NUMBERS("7")
        model.MATH_ACTIONS(newSign: "+")
        model.NUMBERS("8")
        model.EQUAL()
        model.MATH_ACTIONS(newSign: "-")
        model.NUMBERS("5")
        model.EQUAL()
        XCTAssertEqual("10", model.result)
    }
    func testAddition()
    {
        let model = CalcModel()
        model.NUMBERS("7")
        model.MATH_ACTIONS(newSign: "+")
        model.NUMBERS("8")
        model.EQUAL()
        XCTAssertEqual("15", model.result)
    }
    func testAddition2()
    {
        let model = CalcModel()
        model.NUMBERS("7")
        model.MATH_ACTIONS(newSign: "+")
        model.NUMBERS("8")
        model.PLUS_MINUS()
        model.EQUAL()
        XCTAssertEqual("-1", model.result)
    }
    
    
    func testSubtraction()
    {
        let model = CalcModel()
        model.NUMBERS("7")
        model.MATH_ACTIONS(newSign: "-")
        model.NUMBERS("8")
        model.EQUAL()
        XCTAssertEqual("-1", model.result)
    }
    func testSubtraction2()
    {
        let model = CalcModel()
        model.NUMBERS("7")
        model.MATH_ACTIONS(newSign: "-")
        model.NUMBERS("8")
        model.PLUS_MINUS()
        model.EQUAL()
        XCTAssertEqual("15", model.result)
    }

    
    func testMultiplication()
    {
        let model = CalcModel()
        model.NUMBERS("7")
        model.MATH_ACTIONS(newSign: "*")
        model.NUMBERS("8")
        model.EQUAL()
        XCTAssertEqual("56", model.result)
    }
    func testMultiplication2()
    {
        let model = CalcModel()
        model.NUMBERS("7")
        model.PLUS_MINUS()
        model.MATH_ACTIONS(newSign: "*")
        model.NUMBERS("8")
        model.EQUAL()
        XCTAssertEqual("-56", model.result)
    }
    
    func testDivision()
    {
        let model = CalcModel()
        model.NUMBERS("24")
        model.MATH_ACTIONS(newSign: "/")
        model.NUMBERS("8")
        model.EQUAL()
        XCTAssertEqual("3", model.result)
    }
    func testDivision2()
    {
        let model = CalcModel()
        model.NUMBERS("24")
        model.MATH_ACTIONS(newSign: "/")
        model.NUMBERS("0")
        model.EQUAL()
        XCTAssertEqual("Error", model.result)
    }
    func testDivision3()
    {
        let model = CalcModel()
        model.NUMBERS("24")
        model.MATH_ACTIONS(newSign: "/")
        model.NUMBERS("8")
        model.PLUS_MINUS()
        model.EQUAL()
        XCTAssertEqual("-3", model.result)
    }
    
    func testDEL1()
    {
        let model = CalcModel()
        model.DEL()
        XCTAssertEqual("0", model.num1)
    }
    func testDEL2()
    {
        let model = CalcModel()
        model.NUMBERS("8")
        model.MATH_ACTIONS(newSign: "+")
        model.NUMBERS("9")
        model.DEL()
        model.NUMBERS("9")
        model.EQUAL()
        XCTAssertEqual("17", model.result)
    }
    func testDEL3()
    {
        let model = CalcModel()
        model.NUMBERS("8")
        model.MATH_ACTIONS(newSign: "+")
        model.DEL()
        model.NUMBERS("2")
        model.MATH_ACTIONS(newSign: "-")
        model.NUMBERS("8")
        model.EQUAL()
        XCTAssertEqual("74", model.result)
    }
    func testDEL4()
    {
        let model = CalcModel()
        model.NUMBERS("8")
        model.DEL()
        model.NUMBERS("9")
        model.MATH_ACTIONS(newSign: "-")
        model.NUMBERS("8")
        model.EQUAL()
        XCTAssertEqual("1", model.result)
    }
    func DEL5()
    {
        let model = CalcModel()
        model.NUMBERS("9")
        model.MATH_ACTIONS(newSign: "+")
        model.NUMBERS("8")
        model.EQUAL()
        model.DEL()
        model.MATH_ACTIONS(newSign: "-")
        model.NUMBERS("7")
        model.EQUAL()
        XCTAssertEqual("10", model.result)
    }
    func testDEL6()
    {
        let model = CalcModel()
        model.NUMBERS("8")
        model.PLUS_MINUS()
        model.DEL()
        model.NUMBERS("9")
        model.MATH_ACTIONS(newSign: "-")
        model.NUMBERS("8")
        model.EQUAL()
        XCTAssertEqual("1", model.result)
    }
    func testDEL7()
    {
        let model = CalcModel()
        model.NUMBERS("8")
        model.MATH_ACTIONS(newSign: "-")
        model.NUMBERS("8")
        model.PLUS_MINUS()
        model.DEL()
        model.NUMBERS("9")
        model.EQUAL()
        XCTAssertEqual("-1", model.result)
    }
    func testPlusMinus1()
    {
        let model = CalcModel()
        model.NUMBERS("6")
        model.PLUS_MINUS()
        model.MATH_ACTIONS(newSign: "+")
        model.NUMBERS("4")
        model.EQUAL()
        XCTAssertEqual("-2", model.result)
    }
    func testPlusMinus2()
    {
        let model = CalcModel()
        model.NUMBERS("6")
        model.PLUS_MINUS()
        model.PLUS_MINUS()
        model.MATH_ACTIONS(newSign: "+")
        model.NUMBERS("4")
        model.PLUS_MINUS()
        model.EQUAL()
        XCTAssertEqual("2", model.result)
    }
    func testPlusMinus3()
    {
        let model = CalcModel()
        model.NUMBERS("6")
        model.MATH_ACTIONS(newSign: "+")
        model.NUMBERS("4")
        model.EQUAL()
        model.PLUS_MINUS()
        XCTAssertEqual("-10", model.num1)
    }
    
    func testC()
    {
        let model = CalcModel()
        model.NUMBERS("1")
        model.MATH_ACTIONS(newSign: "+")
        model.NUMBERS("1")
        model.C()
        model.NUMBERS("2")
        model.MATH_ACTIONS(newSign: "+")
        model.NUMBERS("2")
        model.EQUAL()
        XCTAssertEqual("4", model.result)
    }
    
    func testEqual1()
    {
        let model = CalcModel()
        model.NUMBERS("7")
        model.MATH_ACTIONS(newSign: "+")
        model.EQUAL()
        XCTAssertEqual("14", model.result)
    }
    func testEqual2()
    {
        let model = CalcModel()
        model.NUMBERS("7")
        model.MATH_ACTIONS(newSign: "+")
        model.NUMBERS("8")
        model.EQUAL()
        model.EQUAL()
        XCTAssertEqual("23", model.result)
    }
    
    func testConsecutiveActions()
    {
        let model = CalcModel()
        model.NUMBERS("7")
        model.MATH_ACTIONS(newSign: "+")
        model.NUMBERS("8")
        model.MATH_ACTIONS(newSign: "-")
        model.NUMBERS("3")
        model.EQUAL()
        XCTAssertEqual("12", model.result)
    }
    
    func testDigitAfterResult()
    {
        let model = CalcModel()
        model.NUMBERS("1")
        model.MATH_ACTIONS(newSign: "+")
        model.NUMBERS("1")
        model.EQUAL()
        model.NUMBERS("2")
        model.MATH_ACTIONS(newSign: "+")
        model.NUMBERS("2")
        model.EQUAL()
        XCTAssertEqual("4", model.result)
    }
}
