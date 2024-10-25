//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
var tip = 0.10
var billtotal = 0.0
var billamount = 0.0
var numberOfPeople = 2
var final = "0.0"
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
        let bill = billTextField.text!
        if bill != "" {
            billtotal=Double(bill)!
            billamount =  billtotal * (1 + tip) / Double(numberOfPeople)
            final = String(format: "%.0f",billamount)
            //print(billamount)
            
        }
        self.performSegue(withIdentifier: "GoToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.result = final
            destinationVC.tips = Int (tip * 100)
            destinationVC.peopleCount = numberOfPeople
        }
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitLabel.text = String(format: "%.0f",sender.value)
        numberOfPeople = Int(sender.value)
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        rwenty.isSelected = false
        zero.isSelected = false
        ten.isSelected = false
        sender.isSelected = true
        let tipselected = sender.currentTitle!
        //print(type(of: tipselected))
        let lastpercentage = String(tipselected.dropLast())
        let tipnumber = Double(lastpercentage)!
        //tip = sender.
        //print(tipnumber)
        tip = tipnumber/100
    }
    
}

