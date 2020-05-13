//
//  CustomButton2.swift
//  CalcModel
//
//  Created by Fed on 4/14/20.
//  Copyright © 2020 Fed. All rights reserved.
//

import UIKit
import Foundation

class RoundedButton: UIButton
{
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setProperties()
    }
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        setProperties()
    }
    
    func setProperties()
    {
        //self.backgroundColor = .gray
        //self.layer.borderWidth = 1
        //self.layer.borderColor = UIColor.gray().CGColor
        //self.imageView?.contentMode = .scaleToFill
        self.layer.cornerRadius = self.layer.frame.height / 3.5
        self.clipsToBounds = true
        self.titleLabel?.font = self.titleLabel?.font.withSize(CGFloat(self.frame.height * 0.4))
    }


}
