//
//  TipCalculator.swift
//  calc
//
//  Created by user174875 on 6/17/20.
//  Copyright © 2020 user174875. All rights reserved.
//


import Foundation
class TipCalculator{
    var amount: Double = 0
    var tipAmount: Double = 0
    var tipPercentage: Double = 0
    var total: Double = 0
    
    init(amount: Double, tipPercentage: Double){
        self.amount = amount
        self.tipPercentage = tipPercentage
    }
    func calculateBill(){
    
        tipAmount = amount * tipPercentage
        total = tipAmount+amount
        print(tipAmount)
    }
}
