//
//  EqualButton.swift
//  CalcModel
//
//  Created by Fed on 4/19/20.
//  Copyright © 2020 Fed. All rights reserved.
//

import UIKit
import DynamicColor

class EqualButton: RoundedButton
{
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor(hexString: "#00a8cc")
    }
//    override init(frame: CGRect)
//    {
//        super.init(frame: frame)
//        self.backgroundColor = UIColor(hexString: "#00a8cc")
//    }
}
