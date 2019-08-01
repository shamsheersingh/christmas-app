//
//  CheckBox.swift
//  Christmas app
//
//  Created by GWC on 7/30/19.
//  Copyright © 2019 GWC. All rights reserved.
//
import UIKit

class CheckBox: UIButton {
    // Images
    let checkedImage = UIImage(named: "check_box")! as UIImage
    let uncheckedImage = UIImage(named: "empty_box")! as UIImage
    
    // Bool property
    var isChecked: Bool = false {
        didSet{
            if isChecked == true {
                self.setImage(checkedImage, for: UIControl.State.normal)
            } else {
                self.setImage(uncheckedImage, for: UIControl.State.normal)
            }
        }
    }
    
    override func awakeFromNib() {
        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
        self.isChecked = false
    }
    
    @objc func buttonClicked(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
        }
    }
}
