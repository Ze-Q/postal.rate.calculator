//
//  Postal_Rate_CalculatorTests.swift
//  Postal Rate CalculatorTests
//
//  Created by Ze Qian Zhang on 2016-02-16.
//  Copyright © 2016 zexception. All rights reserved.
//

import XCTest
@testable import Postal_Rate_Calculator

class Postal_Rate_CalculatorTests: XCTestCase {
    var rateComputer: RateComputer?
    
    override func setUp() {
        super.setUp()
        rateComputer = RateComputer()
    }
    
    // ======== Standard Under 30g
    
    func test1StandardMailUnder30g() {
        //exercise function under test
        let result = rateComputer!.computePostalRate(140, height: 90, depth: 0.18, weight: 1)
        
        //check the expected output
        XCTAssert(result.cost == 1.0)

        //make sure there is no error message
        XCTAssert(result.errorMessage == "")
    }
    
    func test2StandardMailUnder30g() {
        
        let result = rateComputer!.computePostalRate(140, height: 90, depth: 0.18, weight: 30)
        
        XCTAssert(result.cost == 1.0)
        
        XCTAssert(result.errorMessage == "")
    }
    
    func test3StandardMailUnder30g() {
        
        let result = rateComputer!.computePostalRate(245, height: 156, depth: 5, weight: 1)
        
        XCTAssert(result.cost == 1.0)
        
        XCTAssert(result.errorMessage == "")
    }
    
    func test4StandardMailUnder30g() {

        let result = rateComputer!.computePostalRate(245, height: 156, depth: 5, weight: 30)
        
        XCTAssert(result.cost == 1.0)
        
        XCTAssert(result.errorMessage == "")
    }
    
    // ======== Standard Over 30g
    
    func test5StandardMailOver30g() {

        let result = rateComputer!.computePostalRate(140, height: 90, depth: 0.18, weight: 31)
        
        XCTAssert(result.cost == 1.2)
        
        XCTAssert(result.errorMessage == "")
    }
    
    func test6StandardMailOver30g() {
        
        let result = rateComputer!.computePostalRate(140, height: 90, depth: 0.18, weight: 50)
        
        XCTAssert(result.cost == 1.2)

        XCTAssert(result.errorMessage == "")
    }
    
    func test7StandardMailOver30g() {
        
        let result = rateComputer!.computePostalRate(245, height: 156, depth: 5, weight: 31)
        
        XCTAssert(result.cost == 1.2)

        XCTAssert(result.errorMessage == "")
    }
    
    func test8StandardMailOver30g() {
        
        let result = rateComputer!.computePostalRate(245, height: 156, depth: 5, weight: 50)
        
        XCTAssert(result.cost == 1.2)

        XCTAssert(result.errorMessage == "")
    }
    
    // ======== Non Standard Under 100g
    
    func test9NonStandardMailUnder100g() {
        
        let result = rateComputer!.computePostalRate(140, height: 90, depth: 0.18, weight: 51)
        
        XCTAssert(result.cost == 1.8)

        XCTAssert(result.errorMessage == "")
    }
    
    func test10NonStandardMailUnder100g() {
        
        let result = rateComputer!.computePostalRate(140, height: 90, depth: 0.18, weight: 100)
        
        XCTAssert(result.cost == 1.8)

        XCTAssert(result.errorMessage == "")
    }
    
    func test11NonStandardMailUnder100g() {
        
        let result = rateComputer!.computePostalRate(246, height: 157, depth: 6, weight: 1)
        
        XCTAssert(result.cost == 1.8)

        XCTAssert(result.errorMessage == "")
    }
    
    func test12NonStandardMailUnder100g() {
        
        let result = rateComputer!.computePostalRate(246, height: 157, depth: 6, weight: 100)
        
        XCTAssert(result.cost == 1.8)

        XCTAssert(result.errorMessage == "")
    }
    
    func test13NonStandardMailUnder100g() {
        
        let result = rateComputer!.computePostalRate(380, height: 270, depth: 20, weight: 1)
        
        XCTAssert(result.cost == 1.8)

        XCTAssert(result.errorMessage == "")
    }
    
    func test14NonStandardMailUnder100g() {
        
        let result = rateComputer!.computePostalRate(380, height: 270, depth: 20, weight: 100)
        
        XCTAssert(result.cost == 1.8)

        XCTAssert(result.errorMessage == "")
    }
    
    // ======== Non Standard Between 100g-200g
    
    func test15NonStandardMailBtwn100g200g() {
        
        let result = rateComputer!.computePostalRate(140, height: 90, depth: 0.18, weight: 101)
        
        XCTAssert(result.cost == 2.95)

        XCTAssert(result.errorMessage == "")
    }
    
    func test16NonStandardMailBtwn100g200g() {
        
        let result = rateComputer!.computePostalRate(140, height: 90, depth: 0.18, weight: 200)
        
        XCTAssert(result.cost == 2.95)
        
        XCTAssert(result.errorMessage == "")
    }
    
    func test17NonStandardMailBtwn100g200g() {
        
        let result = rateComputer!.computePostalRate(380, height: 270, depth: 20, weight: 101)
        
        XCTAssert(result.cost == 2.95)
        
        XCTAssert(result.errorMessage == "")
    }
    
    func test18NonStandardMailBtwn100g200g() {
        
        let result = rateComputer!.computePostalRate(380, height: 270, depth: 20, weight: 200)
        
        XCTAssert(result.cost == 2.95)
        
        XCTAssert(result.errorMessage == "")
    }
    
    // ======== Non Standard Between 200g-300g
    
    func test19NonStandardMailBtwn200g300g() {
        
        let result = rateComputer!.computePostalRate(140, height: 90, depth: 0.18, weight: 201)
        
        XCTAssert(result.cost == 4.1)
        
        XCTAssert(result.errorMessage == "")
    }
    
    func test20NonStandardMailBtwn200g300g() {
        
        let result = rateComputer!.computePostalRate(140, height: 90, depth: 0.18, weight: 300)
        
        XCTAssert(result.cost == 4.1)
        
        XCTAssert(result.errorMessage == "")
    }
    
    func test21NonStandardMailBtwn200g300g() {
        
        let result = rateComputer!.computePostalRate(380, height: 270, depth: 20, weight: 201)
        
        XCTAssert(result.cost == 4.1)
        
        XCTAssert(result.errorMessage == "")
    }
    
    func test22NonStandardMailBtwn200g300g() {
        
        let result = rateComputer!.computePostalRate(380, height: 270, depth: 20, weight: 300)
        
        XCTAssert(result.cost == 4.1)
        
        XCTAssert(result.errorMessage == "")
    }
    
    // ======== Non Standard Between 300g-400g
    
    func test23NonStandardMailBtwn300g400g() {
        
        let result = rateComputer!.computePostalRate(140, height: 90, depth: 0.18, weight: 301)
        
        XCTAssert(result.cost == 4.7)
        
        XCTAssert(result.errorMessage == "")
    }
    
    func test24NonStandardMailBtwn300g400g() {
        
        let result = rateComputer!.computePostalRate(140, height: 90, depth: 0.18, weight: 400)
        
        XCTAssert(result.cost == 4.7)
        
        XCTAssert(result.errorMessage == "")
    }
    
    func test25NonStandardMailBtwn300g400g() {
        
        let result = rateComputer!.computePostalRate(380, height: 270, depth: 20, weight: 301)
        
        XCTAssert(result.cost == 4.7)
        
        XCTAssert(result.errorMessage == "")
    }
    
    func test26NonStandardMailBtwn300g400g() {
        
        let result = rateComputer!.computePostalRate(380, height: 270, depth: 20, weight: 400)
        
        XCTAssert(result.cost == 4.7)
        
        XCTAssert(result.errorMessage == "")
    }
    
    // ======== Non Standard Between 400g-500g
    
    func test27NonStandardMailBtwn400g500g() {
        
        let result = rateComputer!.computePostalRate(140, height: 90, depth: 0.18, weight: 401)
        
        XCTAssert(result.cost == 5.05)
        
        XCTAssert(result.errorMessage == "")
    }
    
    func test28NonStandardMailBtwn400g500g() {
        
        let result = rateComputer!.computePostalRate(140, height: 90, depth: 0.18, weight: 500)
        
        XCTAssert(result.cost == 5.05)
        
        XCTAssert(result.errorMessage == "")
    }
    
    func test29NonStandardMailBtwn400g500g() {
        
        let result = rateComputer!.computePostalRate(380, height: 270, depth: 20, weight: 401)
        
        XCTAssert(result.cost == 5.05)
        
        XCTAssert(result.errorMessage == "")
    }
    
    func test30NonStandardMailBtwn400g500g() {
        
        let result = rateComputer!.computePostalRate(380, height: 270, depth: 20, weight: 500)
        
        XCTAssert(result.cost == 5.05)
        
        XCTAssert(result.errorMessage == "")
    }
    
    // ======== width that is out of range
    
    func test31WidthOutOfRange() {
        let result = rateComputer!.computePostalRate(139, height: 90, depth: 0.18, weight: 5)

        XCTAssert(result.errorMessage == "ERROR: width is not in valid range (140-380)")
    }
    
    func test32WidthOutOfRange() {
        let result = rateComputer!.computePostalRate(381, height: 90, depth: 0.18, weight: 5)
        
        XCTAssert(result.errorMessage == "ERROR: width is not in valid range (140-380)")
    }

    // ======== height that is out of range
    
    func test33HeightOutOfRange() {
        let result = rateComputer!.computePostalRate(245, height: 89, depth: 5, weight: 45)
        
        XCTAssert(result.errorMessage == "ERROR: height is not in valid range (90-270)")
    }
    
    func test34HeightOutOfRange() {
        let result = rateComputer!.computePostalRate(380, height: 271, depth: 5, weight: 45)
        
        XCTAssert(result.errorMessage == "ERROR: height is not in valid range (90-270)")
    }
    
    // ======== depth that is out of range
    
    func test35DepthOutOfRange() {
        let result = rateComputer!.computePostalRate(245, height: 156, depth: 0.17, weight: 45)
        
        XCTAssert(result.errorMessage == "ERROR: depth is not in valid range (0.18-20)")
    }
    
    func test36DepthOutOfRange() {
        let result = rateComputer!.computePostalRate(245, height: 156, depth: 21, weight: 45)
        
        XCTAssert(result.errorMessage == "ERROR: depth is not in valid range (0.18-20)")
    }
    
    // ======== weight that is out of range
    
    func test37WeightOutOfRange() {
        let result = rateComputer!.computePostalRate(245, height: 156, depth: 5, weight: 0)
        
        XCTAssert(result.errorMessage == "ERROR: weight cannot be 0g.")
    }
    
    func test38WeightOutOfRange() {
        let result = rateComputer!.computePostalRate(245, height: 156, depth: 5, weight: 501)
        
        XCTAssert(result.errorMessage == "ERROR: weight has to be lower than 500g.")
    }
    
    // ======== width is shorter than height
    
    func test39WidthShorterThanHeight() {
        let result = rateComputer!.computePostalRate(245, height: 250, depth: 5, weight: 50)
        
        XCTAssert(result.errorMessage == "ERROR: width should be longer than height.")
    }
}
