//
//  CustomButton.swift
//  WorkoutGuide
//
//  Created by Daniel Springer on 23/04/2017.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import UIKit

class CustomButton: UIButton
{

    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        
        self.backgroundColor = themeColor
        self.setTitleColor(textColor, for: .normal)
        self.titleLabel?.font = appFont
        self.layer.cornerRadius = 5
        self.layer.borderColor = borderColor
        self.layer.borderWidth = 3
        self.clipsToBounds = true
    }

}
