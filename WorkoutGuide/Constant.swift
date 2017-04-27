//
//  Constant.swift
//  WorkoutGuide
//
//  Created by Daniel Springer on 25/04/2017.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import Foundation
import UIKit

let defaults = UserDefaults.standard

let red = defaults.float(forKey: "red")
let green = defaults.float(forKey: "green")
let blue = defaults.float(forKey: "blue")

let themeColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1.00)


let textColor = UIColor(red: 0.000, green: 0.553, blue: 0.824, alpha: 1.00)

let appFont = UIFont(name: "Georgia-Bold" , size: 20)

let borderColor = UIColor(red: 0.000, green: 0.553, blue: 0.824, alpha: 1.00).cgColor

let buttonBorderColor = UIColor(red: 0.424, green: 0.859, blue: 0.737, alpha: 1.00).cgColor
