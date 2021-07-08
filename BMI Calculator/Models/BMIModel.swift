//
//  BMIModel.swift
//  BMI Calculator
//
//  Created by Vladimir Khrolovich on 7.07.21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct BMIModel {
    var height: Float
    var weight: Float
    
    var bmi: BMI?
    
    init(height h: Float, weight w: Float) {
        self.height = h
        self.weight = w
    }
    
    mutating func setHeight(_ h:Float) {
        height = h
    }
    
    mutating func setWeight(_ w:Float) {
        weight = w
    }
    
    mutating func setBMI() {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))
        }
    }
    
    mutating func getBMI() -> BMI {
        setBMI()
        return bmi!
    }
    
}
