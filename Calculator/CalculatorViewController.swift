//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by stanley on 2016. 11. 3..
//  Copyright © 2016년 Eunjin Kim. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var displayLabel: UILabel!
    var storedOp: String?
    var storedNum: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func numburButtonPressed(_ sender: UIButton) {
        print("\(sender.title(for: .normal)) numburButtonPressed")
        if let _ = storedOp, let storedNum = storedNum, displayLabel.text == storedNum {
            displayLabel.text = nil
        }
        
        if let text = displayLabel.text, text != "0" {
            displayLabel.text = displayLabel.text! + String(sender.tag)
        } else {
            displayLabel.text = String(sender.tag)
        }
    }
    
    @IBAction func opButtonPressed(_ sender: UIButton) {
        print("\(sender.title(for: .normal)) opButtonPressed")
        
        if let storedOp = storedOp, let storedNum = storedNum  {
            if storedOp == "+" {
                displayLabel.text = String(Int(storedNum)! + Int(displayLabel.text!)!)
            }
        }
        
        storedOp = sender.title(for: .normal)
        storedNum = displayLabel.text
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
