//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by saeem  on 27/01/22.
//  Copyright © 2022 Saeem. All rights reserved.
//

// This file is created with Cocoa Touch to display our result view.
import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue:String? // This is a property of ResultViewcontroller I have set it up as optional string because initially, when I create my ResultViewController I don't know what is the BMI value of a user or is going to be. it's only possible when I calculate the BMI and pass it over
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue // This is helping us to display our calculate BMI in the label.
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil) // This will dismiss our current viewController which is ResultViewController here so when we hit recalculate button it will take us to the calculateViewController Screen.
        // NOTE: IT IS NOT MANDATORY HERE TO USE SELF WE CAN REMOVE IT TO KEEP OUR CODE MORE CLEAN.
        
     
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
