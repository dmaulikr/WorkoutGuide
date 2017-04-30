//
//  SettingsViewController.swift
//  WorkoutGuide
//
//  Created by Daniel Springer on 26/04/2017.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import UIKit



class SettingsViewController: UIViewController
{
    //# MARK: - Outlets
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorSquare: UIView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    //# MARK: - Variables
    
    let defaults = UserDefaults.standard


        
    //# MARK: - Functions
    
   
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // loads the stored defaults of theme color chosen
        let defaults = UserDefaults.standard
        
        redSlider.value = defaults.float(forKey: "red")
        greenSlider.value = defaults.float(forKey: "green")
        blueSlider.value = defaults.float(forKey: "blue")
        
        // Losds the stored defaults of text color chosen
      
        
        
        // updates the color chosen
        updateBackgroundColor()
        colorSquare.layer.borderColor = UIColor.black.cgColor
        colorSquare.layer.borderWidth = 1
    }
    
    
    //# MARK: - Actions
    @IBAction func segmentControl(_ sender: UISegmentedControl)
    {
        let index = segmentedControl.selectedSegmentIndex
        defaults.set(index, forKey: "textColorSelected")
        
        if index == 0
        {
            textColor.
        }

    }
    
    @IBAction func updateBackgroundColor()
    {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        colorSquare.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        // stores the info of the color chosen
        let defaults = UserDefaults.standard
        defaults.set(redSlider.value, forKey: "red")
        defaults.set(greenSlider.value, forKey: "green")
        defaults.set(blueSlider.value, forKey: "blue")
        defaults.synchronize()
        
    }


    
    //# TODO: - Add features
    
    
    //# FIXME: - Bug
 
}
