//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Vladimir Khrolovich on 7.07.21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var suggestionLabel: UILabel!
    
    var bmi: BMI?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        if let bmi = bmi {
//            resultLabel.text = String(format: "%.1f", bmi.value)
//            suggestionLabel.text = bmi.advice
//            self.view.backgroundColor = bmi.color
//        } else {
            resultLabel.text = String(format: "%.1f", 0.0)
            suggestionLabel.text = "Ooopss...Error"
            self.view.backgroundColor = UIColor.black
//        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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
