//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ColculateViewController: UIViewController {
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightValue: UILabel!
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightValue: UILabel!
    //var bmiValue: Float = 0.0
    var bmi = BMIModel(height: 1.5, weight: 80)
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        heightSlider.thumbTintColor = UIColor.init(red: 116, green: 114, blue: 210, alpha: 1)
//        heightSlider.thumbTintColor = UIColor.init(red: 116, green: 114, blue: 210, alpha: 1)
        heightSlider.maximumValue = 2.5
        heightSlider.minimumValue = 0.4
        heightSlider.value = bmi.height
        weightSlider.value = bmi.weight
        updateUI()
        
    }
    
    @IBAction func changingHeight(_ sender: UISlider) {
        bmi.setHeight(sender.value)
        updateUI()
    }
    
    @IBAction func changingWeight(_ sender: UISlider) {
        bmi.setWeight(sender.value)
        updateUI()
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueToResult", sender: self)
    }
    
    
    func updateUI() {
        heightValue.text = "\(String(format: "%.2f", heightSlider.value))m"
        weightValue.text = "\(String(Int(weightSlider.value)))Kg"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = bmi.getBMI()
        }
    }
}

