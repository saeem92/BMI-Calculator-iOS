//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Saeem on 20/01/2022.
//  Copyright © 2022  Saeem. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0" // We are using this variable to display result in ResultViewcController.

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
        bmiValue = String(format: "%.1f", bmi) // Here we are storing bmivalue in bmi variable we created above.
        
        // ABOVE CODE IS HELPING US CALCULATING THE BMI VALUE.
        
        // brackets our carried out first before any of the other operations.
        
        // NOTE: ALWAYS REMEMBER BODMAS HAPPENS HERE SO TAKE CARE OF THE VALUES YOU SPECIFY TO MULTIPLY ELSE YOUR FORMULA MIGHT BREAK AND SHOW YOU DIFFERENT VALUES.
        
        // Power is a function in swift which takes 2 inputs and multiply it by the number which we specify.
        
        
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        // In the above code we are using segue to connect our calculateviewocntroller to ResultViewController
        // We have specified sender in above code which is the initiator of the segue and its ofcourse our calculateViewcontroller which is self as we are inside it currently.
        
        // NOTE: IT IS NOT MANDATORY HERE TO USE SELF WE CAN REMOVE IT TO KEEP OUR CODE MORE CLEAN AS SWIFT ALREADY KNOWS THAT WE ARE TALKING ABOUT THIS CALCULATE VIEW CONTROLLER ONLY.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" { // we have used if segue.identifier == "gotoresult to check in case if we have multiple segue in our app that we are connecting to the right viewcontroller.
            
            
            let destinationVC = segue.destination as! ResultViewController // we have created a constant destination vc here and this segue.destination is the view controller that will be initialized when the segue gets performed and it has a type of UIViewController.
            
            // We have used as! ResultViewController in above code because segue.destination has a datatype of UIViewcontroller and therefore our destination vc is also a UIViewController BUT BMI VALUE ONLY EXIST WITHIN OUR RESULTVIEWCONTROLLER SO IN ORDER TO NARROW IT DOWN TO SAY THAT SEGUE.DESTINATION IS ACTUALLY A VIEW CONTROLLER WE HAVE USED as! ResultViewController.
            
            // "as" Keyword is used for performing downcasting the ! says this is going to be a forced downcast.
            
            destinationVC.bmiValue = bmiValue // We have setup the bmivalue here so when our segue gets triggered we will pass over the bmivalue to our destinationVC which is our ResultViewController.
             }
    }
    // The above code is prepare for segue method it is a method that we inherit from UIViewcontroller which we are going to override
        
        
        
        
        
        
        
        // WE HAVE COMMENTED BELOW CODE WHICH WE CREATED TO CONNECT ONE SCREEN TO ANOTHER INSTEAD OF THIS WE ARE USING SEGUE ABOVE
        // secondVC.bmiValue = String(format: "%.1f", bmi) // Here we are accessing our bmi value that we have created inside SecondViewcontroller.
        // We have created this in String format because our bmi value was in String and BMI value is specified in float so we have created a format to display this value as String.
        
       // self.present(secondVC, animated: true, completion: nil) // This is helping us to show our secondvc screen which secondviewcontroller and we have specified if we want animation or not and completion.
    
    
}

