//
//  DetailsViewController.swift
//  WorkoutGuide
//
//  Created by Daniel Springer on 23/04/2017.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController
{
    //# MARK: - Outlets
    
    @IBOutlet weak var workoutLabel: UILabel!
    
    //# MARK: - Variables
    
    
    //# MARK: - Functions
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Title text
        self.workoutLabel.text? = workoutTitleText
        self.workoutLabel.textColor = textColor
        self.workoutLabel.font = appFont
        
        // Page background
        self.view.backgroundColor = themeColor
        
        // Workout image
        let imgView = view.viewWithTag(6) as! UIImageView
        let workoutImage = UIImage(named: detailsArray[0])
        imgView.image = workoutImage
        imgView.backgroundColor = .white
        imgView.layer.borderWidth = 4
        imgView.layer.borderColor = borderColor
        
        // Workout description field
        let descTxtView = view.viewWithTag(7) as! UITextView
        descTxtView.backgroundColor = themeColor
        descTxtView.text = detailsArray[1]
        descTxtView.textColor = textColor
        descTxtView.font = appFont
        
        // Close button
        let button = view.viewWithTag(5) as! UIButton
        button.setTitleColor(textColor, for: .normal)
        button.tintColor = textColor
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 3.5
        button.layer.borderColor = textColor.cgColor
        
        
    }
    
    //# MARK: - Actions
    
    
    //# TODO: - Add features
    
    
    //# FIXME: - Bug

}
