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
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let result = rateComputer?.computePostalRate(0.2, height: 11, depth: 4.2, weight: 154.1)
        XCTAssert(result == 0)
    }
}
