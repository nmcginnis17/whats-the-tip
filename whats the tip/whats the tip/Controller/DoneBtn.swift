//
//  DoneBtn.swift
//  whats the tip
//
//  Created by Nicholas McGinnis on 7/8/22.
//

import UIKit

extension UITextField {
    func addDoneToolBar(onDone: (target: Any, action: Selector)? = nil) {
        let onDone = onDone ?? (target: self, action: #selector(doneButtonTapped))
        
        let toolbar: UIToolbar = UIToolbar()
        toolbar.barStyle = .default
        toolbar.items = [
            UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil),
            UIBarButtonItem(title: "Done", style: .done, target: onDone.target, action: onDone.action)
        ]
        toolbar.sizeToFit()
        
        self.inputAccessoryView = toolbar
    }
    @objc func doneButtonTapped() {    self.resignFirstResponder() }
}
