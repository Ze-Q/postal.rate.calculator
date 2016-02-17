//
//  rateComputer.swift
//  Postal Rate Calculator
//
//  Created by Ze Qian Zhang on 2016-02-17.
//  Copyright © 2016 zexception. All rights reserved.
//

import Foundation

class RateComputer {
    func computePostalRate(width: Double, height: Double, depth: Double, weight: Double)
        -> (cost: Double, errorMessage: String) {
            if (weight <= 30) {
                return (1.0, "")
            }
        return (0.0, "")
    }
}