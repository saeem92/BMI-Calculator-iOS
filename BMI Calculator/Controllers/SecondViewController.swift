//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by saeem  on 26/01/22.
//  Copyright © 2022 Saeem. All rights reserved.
//

import Foundation // This is what we call frameworks that apple has developed by apple to make iOS development easier foundation allows you to work with most of the features of the Swift Programming language.

import UIKit // Everything basically that starts with UI comees from the UIkit framework
// By import UIKit we have access to all the components that apple has already built inside UIKit including for example a UIlabel or a UIcolor or maybe the UIImageView it has alot of things!


class SecondViewController: UIViewController { // UIViewController is what we need to manage our second screen in this app, UIViewcontroller is an object that manages a view herarchy for your UIKit app.
    
    var bmiValue = "0.0" // We have created this property to use it inside our label.
    
    override func viewDidLoad() { // view did load has the code that will triggered when our view loads up.
        
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue // Label.text will show us bmi value which we have created above.
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        // In the above code CGRect stands for core graphic rectangle This frame rectangle defines the view's location and size in it's superview's coordinate system
        view.addSubview(label) // Here view.add subview as a method code that will add a view to a parent view.
    }
}
