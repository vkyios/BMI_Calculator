//
//  ViewController.swift
//  BMI Calculator
//
//  Created by vky on 21/08/2019.
//  Copyright © 2019 vky. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var lblWeight: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        if sender.tag == 1 {
            lblHeight.text = String(format: "%.2fm", sender.value)
        } else {
            lblWeight.text = String(format: "%.0fKg", sender.value)
        }
    }
    
    @IBAction func calculatePress(_ sender: Any) {
        calculatorBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destionationVC = segue.destination as! ResultViewController
            destionationVC.bmiValue = calculatorBrain.getBMIValue()
            destionationVC.adviceQuote = calculatorBrain.getAdvice()
            destionationVC.bgColor = calculatorBrain.getColor()
        }
    }
}

