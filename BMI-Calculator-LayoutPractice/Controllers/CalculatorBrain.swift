//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Under True on 10/11/2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        let bmiAdvice: String
        let bmiColor: UIColor
        
        if bmiValue < 18.5 {
            bmiAdvice = "Eat more pies!"
            bmiColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        } else if bmiValue < 24.9 {
            bmiAdvice = "Fit as a fiddle!"
            bmiColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        } else {
            bmiAdvice = "Eat less pies!"
            bmiColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        }
                                     
        bmi = BMI(value: bmiValue, advice: bmiAdvice, color: bmiColor)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
                
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .red
                
    }
}

