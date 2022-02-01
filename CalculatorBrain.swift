//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by saeem  on 01/02/22.
//  Copyright © 2022 Saeem. All rights reserved.
//

import Foundation

struct  CalculatorBrain { // Here inside the calculatorbrain we are going to create all of the properties and methods that are required to calculate our BMI to interpret our BMI and provide the appropriate color.
    
    var bmi: Float = 0.0 // This will be the initial value of our BMI the default value that bmi will begin with.
    
    func getBMIValue() -> String { // -> String the arrow string here means this function will return a String Datatype.
        
         // As we have stored bmi in a variable above we can use it here as well.
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        return bmiTo1DecimalPlace
        
    }
    
    mutating func calculateBMI(height: Float, weight: Float) { // We have used mutating here because bmi is a property of struct and structs are immutable so we have used mutating here.
        
         bmi = weight / (height * height) // This is helping us calculate our BMI and we can call it inside our view Controllers.
        
    }
    
    
}
