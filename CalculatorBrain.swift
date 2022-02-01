//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by saeem  on 01/02/22.
//  Copyright © 2022 Saeem. All rights reserved.
//

import Foundation
import UIKit

struct  CalculatorBrain { // Here inside the calculatorbrain we are going to create all of the properties and methods that are required to calculate our BMI to interpret our BMI and provide the appropriate color.
    
    var bmi: BMI?// This will be the initial value of our BMI the default value that bmi will begin with this is an optional we are taking this BMI from BMI swift file.
    
    func getBMIValue() -> String { // -> String the arrow string here means this function will return a String Datatype.
        
         // As we have stored bmi in a variable above we can use it here as well.
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0) // Here we are using ?? after bmi as optionals these are known as nil colalessing operator they are helping us to not break code when our initial value is nil.
        // IN ABOVE CODE BMI?.VALUE IS HAPPENING BECAUSE VAR bmi: BMI? is a struct HERE BMI? IS EFFECTIVELY optional CHAINING OUR BMI OPTIONAL BECAUSE THE VALUE IS A NORMAL FLOATING POINT NUMBER BUT BMI IS OPTIONAL HERE if our value is nil then we are simply going to use 0.0 as of value.
        return bmiTo1DecimalPlace
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "NO advice" // Here are bmi?.advice was an optional we have used no coalessing optional type here.
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) { // We have used mutating here because bmi is a property of struct and structs are immutable so we have used mutating here.
        
        let bmiValue = weight / (height * height) // This is helping us calculate our BMI and we can call it inside our view Controllers.
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More Please", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Start eating less", color: UIColor.red)
        }
        // Here we have created a if else ladder to determine what to do based on result of the person BMI value if bmivalue is less than 18.5 it will tell them to eat more if it's less than 24.9 then they are fit if it is above 24.9 it will show them that they should start eating less.
        // We've interpreted them and created a separate BMI struct for each value category
       
    }
    
    
}
