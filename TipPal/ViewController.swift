//
//  ViewController.swift
//  TipPal
//
//  Created by Angela Eang
//

import UIKit

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountLabel: UILabel!
    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    
    @IBOutlet weak var tipPercentageTextField: UITextField!
    
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    
    @IBAction func computeTipButtonPressed(_ sender: Any) {
        print("Button Pressed")
        
        let billAmount = Double(billAmountTextField.text!)!
        let tipPercentage = Double(tipPercentageTextField.text!)!
        
        let tipAmount: Double = billAmount * (tipPercentage / 100)
        print(tipAmount)
        
        tipAmountLabel.text = "$\(tipAmount)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }


}

