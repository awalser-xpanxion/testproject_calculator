//
//  PercentageCalculatorTests.swift
//  PercentageCalculatorTests
//
//  Created by Maxime Defauw on 03/02/16.
//  Copyright © 2016 App Coda. All rights reserved.
//

import XCTest
 import PercentageCalculator

class PercentageCalculatorTests: XCTestCase {
    
    var vc: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        vc = storyboard.instantiateInitialViewController() as! ViewController
    }
    
    func testPercentageCalculator() {
        let p = vc.percentage(50, 50)
        XCTAssert(p == 25)
        
    }
    
    
    func testLabelValuesShowedProperly() {
        let _ = vc.view
        vc.updateLabels(Float(80.0), Float(50.0), Float(40.0))
        
        // The labels should now display 80, 50 and 40
        XCTAssert(vc.numberLabel.text == "80.0", "numberLabel doesn't show the right text")
        XCTAssert(vc.percentageLabel.text == "50.0%", "percentageLabel doesn't show the right text")
       XCTAssert(vc.resultLabel.text == "40.0", "resultLabel doesn't show the right text")
    }
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
