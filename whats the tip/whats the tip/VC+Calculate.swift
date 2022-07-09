//
//  VC+Calculate.swift
//  whats the tip
//
//  Created by Nicholas McGinnis on 7/8/22.
//

import UIKit

extension ViewController {
    func calculate() {
        guard let check = Double((checkAmountInputField?.text)!) else { return }
        tips.fifteenTip = Double(check * 0.15)
        tips.fifteenTotal = Double(check * 1.15)
        tips.eighteenTip = Double(check * 0.18)
        tips.eighteenTotal = Double(check * 1.18)
        tips.twentyTip = Double(check * 0.20)
        tips.twentyTotal = Double(check * 1.20)
        tips.twentyTwoTip = Double(check * 0.22)
        tips.twentyTwoTotal = Double(check * 1.22)
    }
    
    func tipTotalLabels() {
        fifteenPercentTipLabel.text = String(format: "$%.2f", tips.fifteenTip)
        eighteenPercentTipLabel.text = String(format: "$%.2f", tips.eighteenTip)
        twentyPercentTipLabel.text = String(format: "$%.2f", tips.twentyTip)
        twentyTwoPercentTipLabel.text = String(format: "$%.2f", tips.twentyTwoTip)
        totalBillFifteenLabel.text = String(format: "$%.2f", tips.fifteenTotal)
        totalBillEighteenLabel.text = String(format: "$%.2f", tips.eighteenTotal)
        totalBillTwentyLabel.text = String(format: "$%.2f", tips.twentyTotal)
        totalBillTwentyTwoLabel.text = String(format: "$%.2f", tips.twentyTwoTotal)
    }
}
