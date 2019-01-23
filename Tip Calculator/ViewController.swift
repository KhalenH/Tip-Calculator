//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Khalen Hudson on 1/23/19.
//  Copyright © 2019 Khalen Hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onTap(_ sender: Any) {
        
        print("Hello");
        view.endEditing(true);
    }
    
    @IBAction func Calculatetip(_ sender: Any) {
        // Get Bill Amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentage = [0.15, 0.2, 0.22]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        // Update the tip and total labels
        tipLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
    }
}

