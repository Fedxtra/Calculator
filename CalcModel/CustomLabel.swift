//
//  CustomLabel.swift
//  CalcModel
//
//  Created by Fed on 4/14/20.
//  Copyright © 2020 Fed. All rights reserved.
//

import UIKit

class CustomLabel: UILabel
{
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        //updateLabel()
    }
//    override init(frame: CGRect)
//    {
//        super.init(frame: frame)
//        //updateLabel()
//    }
    
    func updateLabel()
    {
        self.font = self.font.withSize(CGFloat(self.frame.height * 0.7))  //self.frame.height * 0.64
    }


}

