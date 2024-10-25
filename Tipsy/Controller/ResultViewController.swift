//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Khalith on 24/10/2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit
class ResultViewController:
    UIViewController {
    var result = "0.0"
    var peopleCount = 2
    var tips = 0

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var billAmount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        billAmount.text = result
        label.text = "\(peopleCount) people with \(tips)% tips"
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}

