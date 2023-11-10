//
//  SecondViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Under True on 10/11/2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
     
}
