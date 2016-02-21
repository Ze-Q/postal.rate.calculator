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
            
            if (width < 140 || width > 380) {
                return (0.0, "ERROR: width is not in valid range (140-380)")
            }
            else if (height < 90 || height > 270) {
                return (0.0, "ERROR: height is not in valid range (90-270)")
            }
            else if (depth < 0.18 || depth > 20) {
                return (0.0, "ERROR: depth is not in valid range (0.18-20)")
            }
            else if (weight == 0) {
                return (0.0, "ERROR: weight cannot be 0g.")
            }
            else if (weight > 500) {
                return (0.0, "ERROR: weight has to be lower than 500g.")
            }
            
            if (width < height) {
                return (0.0, "ERROR: width should be longer than height.")
            }
            
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





