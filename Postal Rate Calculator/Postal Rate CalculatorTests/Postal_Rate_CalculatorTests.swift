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
    
    func test1StandardMailUnder30g() {
        //exercise function under test
        let result = rateComputer!.computePostalRate(140, height: 90, depth: 0.18, weight: 5)
        
        //check the expected output
        XCTAssert(result.cost == 1.0)
        
        //make sure there is no error message
        XCTAssert(result.errorMessage == "")
    }
}
