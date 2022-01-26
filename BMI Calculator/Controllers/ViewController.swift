//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Saeem on 20/01/2022.
//  Copyright © 2022  Saeem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    // heightlabel is the label built in our UI and we have connected it from UI to view controller.
    
    @IBOutlet weak var weightLabel: UILabel!
    // weightlabel is the label built in our UI and we have connected it from UI to view controller.
    
    @IBOutlet weak var heightSlider: UISlider!
   // We have created this heightslider outlet to connect our calculate button with them and show the result.
    
    @IBOutlet weak var weightSlider: UISlider!
    // We have created this weightSlider outlet to connect our calculate button with them and show the result.
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        // We have used let height constant here to reduce the amount of code and to make our code less redundant.
        // This is helping us to print decimal values upto 2 points. when we move our slider.
        heightLabel.text = "\(height)m" // Here we are giving height a metric unit metre to display in the label.
        //heightlabel.text is connecting our button to heightlabel so when we move our slider changes will display in label.
    }
    
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        // We have used let weight constant here to reduce the amount of code and to make our code less redundant.
        // This is helping us to print whole number values when we move our slider.
        weightLabel.text = "\(weight)kg"
        // Here we are giving weight a metric unit kg to display in the label.
        //weightlabel.text is connecting our button to weightlabel so when we move our slider changes will display in label.
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
      let height = heightSlider.value
        // using let height constant above so we can use it later to calculate BMI
        // Here we are connecting our height to heightslider outlet to calculate their BMI
      let weight = weightSlider.value
        // using let weight constant above so we can use it later to calculate BMI
        // Here we are connecting our weight to weightslider outlet to calculate their BMI
        
        let bmi = weight / pow(height, 2)
        print(bmi)
        
        // ABOVE CODE IS HELPING US CALCULATING THE BMI VALUE.
        
        // brackets our carried out first before any of the other operations.
        
        // NOTE: ALWAYS REMEMBER BODMAS HAPPENS HERE SO TAKE CARE OF THE VALUES YOU SPECIFY TO MULTIPLY ELSE YOUR FORMULA MIGHT BREAK AND SHOW YOU DIFFERENT VALUES.
        
        // Power is a function in swift which takes 2 inputs and multiply it by the number which we specify.
        
        
        let secondVC = SecondViewController()
        // Here we have let secondVC inside calculate button so when we click on it displays us a new screen which is SecondViewController that we have created.
        secondVC.bmiValue = String(format: "%.1f", bmi) // Here we are accessing our bmi value that we have created inside SecondViewcontroller.
        // We have created this in String format because our bmi value was in String and BMI value is specified in float so we have created a format to display this value as String.
        
        self.present(secondVC, animated: true, completion: nil) // This is helping us to show our secondvc screen which secondviewcontroller and we have specified if we want animation or not and completion.
    }
    
}

