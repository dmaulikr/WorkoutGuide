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
    
    //# MARK: - Variables
    
    
    //# MARK: - Functions
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // loads the stored defaults of color chosen
        let defaults = UserDefaults.standard
        redSlider.value = defaults.float(forKey: "red")
        greenSlider.value = defaults.float(forKey: "green")
        blueSlider.value = defaults.float(forKey: "blue")
        
        // updates the color chosen
        updateBackgroundColor()
        colorSquare.layer.borderColor = UIColor.black.cgColor
        colorSquare.layer.borderWidth = 1
        

    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(true)
        
        updateBackgroundColor()
        
        
    }
    
    //# MARK: - Actions
    
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
        print("Set is being pressed")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // sends the chosen color to the background of the Home ViewController.
        if (segue.identifier == "home") {
            let newViewController = segue.destination
            newViewController.view.backgroundColor = colorSquare.backgroundColor
        }
    }

    
    //# TODO: - Add features
    
    
    //# FIXME: - Bug
 
}
