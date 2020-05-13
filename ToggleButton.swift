//
//  toggleButton.swift
//  CalcModel
//
//  Created by Fed on 4/12/20.
//  Copyright © 2020 Fed. All rights reserved.
//

import UIKit
import DynamicColor

class ToggleButton: EqualButton
{
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //self.image
        //self.imageView?.contentMode = .scaleToFill
        //self.imageEdgeInsets = UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
        //self.contentHorizontalAlignment = .fill
        self.contentVerticalAlignment = .fill
        self.imageView?.contentMode = .scaleAspectFill
        //self.titleLabel?.textColor = UIColor.white
        self.setTitleColor(UIColor.white, for: .selected)
        
    }
    
    let btnDefaultColor = UIColor(hexString: "#00a8cc")
    let btnActivatedColor = UIColor(hexString: "#005082")
    func setToggled(_ isToggled: Bool)
        {
            if (isToggled)
            {
                if (self.isSelected)
                {
                    self.backgroundColor = btnDefaultColor
                    self.isSelected = false
                }
                else
                {
                    self.backgroundColor = btnActivatedColor
                    self.isSelected = true
                    
                }
            }
            else
            {
                self.backgroundColor = btnDefaultColor
                self.isSelected = false
            }
        }
    
//    func toggleButton (isMathAction: Bool, isCurrentMathAction: Bool)
//    {
//        if (isMathAction && isCurrentMathAction)
//        {
//            btnIsToggled = true;
//            self.backgroundColor = UIColor(red:255, green:179, blue:64, alpha: 1)
//        }
//        else
//        {
//            btnIsToggled = false
//            self.backgroundColor = UIColor.orange
//        }
//    }


}
