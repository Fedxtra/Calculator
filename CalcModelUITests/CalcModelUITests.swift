//
//  CalcModelUITests.swift
//  CalcModelUITests
//
//  Created by Fed on 3/25/20.
//  Copyright © 2020 Fed. All rights reserved.
//

import XCTest

class CalcModelUITests: XCTestCase
{
    func testZeroButton()
    {
        let app = XCUIApplication()
        app.launch()
        
        let zeroButton = app.buttons["0"]
        zeroButton.tap()
        
        let staticText = app.staticTexts["mainLabel"]
        
        XCTAssertEqual(staticText.label, "0")
    }
    func testOneButton()
    {
        let app = XCUIApplication()
        app.launch()
        
        let oneButton = app.buttons["1"]
        oneButton.tap()
        
        let staticText = app.staticTexts["mainLabel"]
        
        XCTAssertEqual(staticText.label, "1")
    }
    func testTwoButton()
    {
        let app = XCUIApplication()
        app.launch()
        
        let twoButton = app.buttons["2"]
        twoButton.tap()
        
        let staticText = app.staticTexts["mainLabel"]
        
        XCTAssertEqual(staticText.label, "2")
    }
    func testThreeButton()
    {
        let app = XCUIApplication()
        app.launch()
        
        let threeButton = app.buttons["3"]
        threeButton.tap()
        
        let staticText = app.staticTexts["mainLabel"]
        
        XCTAssertEqual(staticText.label, "3")
    }
    func testFourButton()
    {
        let app = XCUIApplication()
        app.launch()
        
        let FourButton = app.buttons["4"]
        FourButton.tap()
        
        let staticText = app.staticTexts["mainLabel"]
        
        XCTAssertEqual(staticText.label, "4")
    }
    func testFiveButton()
    {
        let app = XCUIApplication()
        app.launch()
        
        let fiveButton = app.buttons["5"]
        fiveButton.tap()
        
        let staticText = app.staticTexts["mainLabel"]
        
        XCTAssertEqual(staticText.label, "5")
    }
    func testSixButton()
    {
        let app = XCUIApplication()
        app.launch()
        
        let sixButton = app.buttons["6"]
        sixButton.tap()
        
        let staticText = app.staticTexts["mainLabel"]
        
        XCTAssertEqual(staticText.label, "6")
    }
    func testSevenButton()
    {
        let app = XCUIApplication()
        app.launch()
        
        let sevenButton = app.buttons["7"]
        sevenButton.tap()
        
        let staticText = app.staticTexts["mainLabel"]
        
        XCTAssertEqual(staticText.label, "7")
    }
    func testEightButton()
    {
        let app = XCUIApplication()
        app.launch()
        
        let eightButton = app.buttons["8"]
        eightButton.tap()
        
        let staticText = app.staticTexts["mainLabel"]
        
        XCTAssertEqual(staticText.label, "8")
    }
    func testNineButton()
    {
        let app = XCUIApplication()
        app.launch()
        
        let nineButton = app.buttons["9"]
        nineButton.tap()
        
        let staticText = app.staticTexts["mainLabel"]
        
        XCTAssertEqual(staticText.label, "9")
    }
    func testCButton()
    {
        let app = XCUIApplication()
        app.launch()
        
        let fiveButton = app.buttons["5"]
        fiveButton.tap()
        
        let C_Button = app.buttons["C"]
        C_Button.tap()
        
        let staticText = app.staticTexts["mainLabel"]
        
        XCTAssertEqual(staticText.label, "0")
    }
    func testPlusMinusButton()
    {
        let app = XCUIApplication()
        app.launch()
        
        let fiveButton = app.buttons["5"]
        fiveButton.tap()
        
        let plusMinusButton = app.buttons["±"]
        plusMinusButton.tap()
        
        let staticText = app.staticTexts["mainLabel"]
        
        XCTAssertEqual(staticText.label, "-5")
    }
    func testDEL_Button()
    {
        let app = XCUIApplication()
        app.launch()
        
        let fiveButton = app.buttons["5"]
        fiveButton.tap()
        let sixButton = app.buttons["6"]
        sixButton.tap()
        
        let delButton = app.buttons["DEL"]
        delButton.tap()
        
        let staticText = app.staticTexts["mainLabel"]
        
        XCTAssertEqual(staticText.label, "5")
    }
    
    func testDivdeButton()
    {
        let app = XCUIApplication()
        app.launch()
        
        let fiveButton = app.buttons["5"]
        fiveButton.tap()
        
        let divideButton = app.buttons["÷"]
        divideButton.tap()
        
        let staticText = app.staticTexts["mainLabel"]
        
        XCTAssertEqual(staticText.label, "5")
    }
    func testMultiplyButton()
    {
        let app = XCUIApplication()
        app.launch()
        
        let fiveButton = app.buttons["5"]
        fiveButton.tap()
        
        let divideButton = app.buttons["×"]
        divideButton.tap()
        
        let staticText = app.staticTexts["mainLabel"]
        
        XCTAssertEqual(staticText.label, "5")
    }
    func testPlusButton()
    {
        let app = XCUIApplication()
        app.launch()
        
        let fiveButton = app.buttons["5"]
        fiveButton.tap()
        
        let divideButton = app.buttons["+"]
        divideButton.tap()
        
        let staticText = app.staticTexts["mainLabel"]
        
        XCTAssertEqual(staticText.label, "5")
    }
    func testMinusButton()
    {
        let app = XCUIApplication()
        app.launch()
        
        let fiveButton = app.buttons["5"]
        fiveButton.tap()
        
        let divideButton = app.buttons["−"]
        divideButton.tap()
        
        let staticText = app.staticTexts["mainLabel"]
        
        XCTAssertEqual(staticText.label, "5")
    }
    
    func testDotButton()
    {
        let app = XCUIApplication()
        app.launch()
        
        let fiveButton = app.buttons["5"]
        fiveButton.tap()
        
        let dotButton = app.buttons["."]
        dotButton.tap()
        
        let staticText = app.staticTexts["mainLabel"]
        
        XCTAssertEqual(staticText.label, "5.")
    }
    
    func testDivisionToggleButton()
    {
        let app = XCUIApplication()
        app.launch()
        app.buttons["8"].tap()
        
        let divideButton = app.buttons["÷"]
        divideButton.tap()
        
        XCTAssertTrue(divideButton.isSelected)
        
        let twoButton = app.buttons["2"]
        twoButton.tap()
        
        let equalButton = app.buttons["="]
        equalButton.tap()
        
        XCTAssertFalse(divideButton.isSelected)
    }
    func testMultiplicationToggleButton()
    {
        let app = XCUIApplication()
        app.launch()
        app.buttons["8"].tap()
        
        let multiplyButton = app.buttons["×"]
        multiplyButton.tap()
        
        XCTAssertTrue(multiplyButton.isSelected)
        
        let twoButton = app.buttons["2"]
        twoButton.tap()
        
        let equalButton = app.buttons["="]
        equalButton.tap()
        
        XCTAssertFalse(multiplyButton.isSelected)
    }

    func testSubtractionToggleButton()
    {
        let app = XCUIApplication()
        app.launch()
        app.buttons["8"].tap()
        
        let minusButton = app.buttons["−"]
        minusButton.tap()
        
        XCTAssertTrue(minusButton.isSelected)
        
        let twoButton = app.buttons["2"]
        twoButton.tap()
        
        let equalButton = app.buttons["="]
        equalButton.tap()
        
        XCTAssertFalse(minusButton.isSelected)
    }

    func testAdditionToggleButton()
    {
        let app = XCUIApplication()
        app.launch()
        app.buttons["8"].tap()
        
        let plusButton = app.buttons["+"]
        plusButton.tap()
        
        XCTAssertTrue(plusButton.isSelected)
        
        let twoButton = app.buttons["2"]
        twoButton.tap()
        
        let equalButton = app.buttons["="]
        equalButton.tap()
        
        XCTAssertFalse(plusButton.isSelected)
    }

    
}
