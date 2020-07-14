//
//  ViewController.swift
//  calc
//
//  Created by user174875 on 6/17/20.
//  Copyright © 2020 user174875. All rights reserved.
//



import UIKit
class ViewController:
UIViewController{

    @IBOutlet weak var fifteen: UIButton!
    @IBOutlet weak var eighteen: UIButton!
    @IBOutlet weak var twenty: UIButton!
    @IBOutlet weak var total: UITextField!
    @IBOutlet weak var tip: UITextView!
    @IBOutlet weak var total2: UITextView!
    
    var tipCalculator = TipCalculator(amount: 0.0, tipPercentage: 0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        total.becomeFirstResponder()
    }
    
    func calculateTip(per:Double){
        tipCalculator.tipPercentage = per
        tipCalculator.calculateBill()
        updateUI()
    }
    func updateUI(){
        tip.text=String(format:"$%0.2f",tipCalculator.tipAmount)
    }
//
    @IBAction func fifteenpressed(_ sender: UIButton) {
        let d = (total.text! as NSString).doubleValue
        calculateTip(per:0.15)
        total.resignFirstResponder()
        tip.text="Tip: "+String(format:"$%0.2f",0.15*(d))
        total2.text="Total: $"+total.text!
        
    }
    @IBAction func eighteenpressed(_ sender: UIButton) {
        let d = (total.text! as NSString).doubleValue
        calculateTip(per:0.18)
        total.resignFirstResponder()
        tip.text="Tip: "+String(format:"$%0.2f",0.18*(d))
        total2.text="Total: $"+total.text!
        
    }
    @IBAction func twentypressed(_ sender: UIButton) {
        let d = (total.text! as NSString).doubleValue
        calculateTip(per:0.20)
        total.resignFirstResponder()
        tip.text="Tip: "+String(format:"$%0.2f",0.20*(d))
        total2.text="Total: $"+total.text!
        
    }

    
    
}
