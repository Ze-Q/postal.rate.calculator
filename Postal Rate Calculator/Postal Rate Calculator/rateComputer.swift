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
            if (width <= 245 && height <= 156 && depth <= 5){
                return (1.0, "")
            }
            else {
                return (1.8, "")
            }
        }
        else if (weight <= 50) {
            return (1.2, "")
        }
        else if (weight <= 100){
            return (1.8, "")
        }
        else if (weight <= 200){
            return (2.95, "")
        }
        else if (weight <= 300){
            return (4.1, "")
        }
        else if (weight <= 400){
            return (4.7, "")
        }
        else if (weight <= 500){
            return (5.05, "")
        }
        return (0.0, "")
    }
}





