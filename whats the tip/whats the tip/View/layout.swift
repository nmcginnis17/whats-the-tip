//
//  layout.swift
//  whats the tip
//
//  Created by Nicholas McGinnis on 7/8/22.
//

import UIKit

extension ViewController {
    func setUpView() {
        calcTipButton.setTitle("What's The Tip?", for: .normal)
        checkAmountInputField.layer.borderColor = UIColor.white.cgColor
        checkAmountInputField.layer.borderWidth = 1.0
        checkAmountInputField.layer.cornerRadius = 15
        tipPercentLabel.text = "%"
        fifteenPercentLabel.text = "15%"
        eightteenPercentLabel.text = "18%"
        twentyPercentLabel.text = "20%"
        twentyTwoPercentLabel.text = "22%"
        tipAmountLabel.text = "Tip Amount"
        fifteenPercentTipLabel.text = String(format: "$%.2f", tips.fifteenTip)
        totalBillFifteenLabel.text = String(format: "$%.2f", tips.fifteenTotal)
        eighteenPercentTipLabel.text = String(format: "$%.2f", tips.eighteenTip)
        totalBillEighteenLabel.text = String(format: "$%.2f", tips.eighteenTotal)
        twentyPercentTipLabel.text = String(format: "$%.2f", tips.twentyTip)
        totalBillTwentyLabel.text = String(format: "$%.2f", tips.twentyTotal)
        twentyTwoPercentTipLabel.text = String(format: "$%.2f", tips.twentyTwoTip)
        totalBillTwentyTwoLabel.text = String(format: "$%.2f", tips.twentyTwoTotal)
        totalBillLabel.text = "Total"
        viewOurAppsBtn.setTitle("See Our Other Apps", for: .normal)
    }
}
