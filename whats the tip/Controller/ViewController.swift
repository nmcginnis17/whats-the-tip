//
//  ViewController.swift
//  whats the tip
//
//  Created by Nicholas McGinnis on 6/4/21.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var checkAmountInputField: UITextField! { didSet {checkAmountInputField?.addDoneToolBar()} }
	@IBOutlet weak var calcTipButton: UIButton!
	@IBOutlet weak var splitCheckBtn: UIButton!
	@IBOutlet weak var tipPercentLabel: UILabel!
	@IBOutlet weak var fifteenPercentLabel: UILabel!
	@IBOutlet weak var eightteenPercentLabel: UILabel!
	@IBOutlet weak var twentyPercentLabel: UILabel!
	@IBOutlet weak var twentyTwoPercentLabel: UILabel!
	@IBOutlet weak var tipAmountLabel: UILabel!
	@IBOutlet weak var fifteenPercentTipLabel: UILabel!
	@IBOutlet weak var eighteenPercentTipLabel: UILabel!
	@IBOutlet weak var twentyPercentTipLabel: UILabel!
	@IBOutlet weak var twentyTwoPercentTipLabel: UILabel!
	@IBOutlet weak var totalBillLabel: UILabel!
	@IBOutlet weak var totalBillFifteenLabel: UILabel!
	@IBOutlet weak var totalBillEighteenLabel: UILabel!
	@IBOutlet weak var totalBillTwentyLabel: UILabel!
	@IBOutlet weak var totalBillTwentyTwoLabel: UILabel!
	@IBOutlet weak var viewOurAppsBtn: UIButton!
    
    var tips = tipCalc()

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		setUpView()
	}

	@IBAction func didTapCalculateBtn(_ sender: Any) {
		checkAmountInputField.resignFirstResponder()
		calculate()
		tipTotalLabels()
	}
	
	@IBAction func didTapOtherAppsBtn(_ sender: Any) {
		UIApplication.shared.open(URL(string: "https://apps.apple.com/us/developer/sinnig-media-llc/id1541775279")!)
	}
}
