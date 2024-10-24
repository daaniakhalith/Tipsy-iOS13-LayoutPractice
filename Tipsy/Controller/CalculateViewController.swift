//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var rwenty: UIButton!
    
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var ten: UIButton!
    
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var splitLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitLabel.text = String(Int(sender.value))
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        rwenty.isSelected = false
        zero.isSelected = false
        ten.isSelected = false
        sender.isSelected = true
        
    }
    
}

