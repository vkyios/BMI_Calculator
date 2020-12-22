//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by vky on 14/01/2020.
//  Copyright © 2020 vky. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: String?
    var adviceQuote: String?
    var bgColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("received value=\(bmiValue!)")
        bmiLabel.text = bmiValue
        adviceLabel.text = adviceQuote
        view.backgroundColor = bgColor
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
