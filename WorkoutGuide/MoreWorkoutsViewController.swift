//
//  MoreWorkoutsViewController.swift
//  WorkoutGuide
//
//  Created by Daniel Springer on 24/04/2017.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import UIKit

var moreDetailsArray = [String]()
var moreWorkoutTitleText = ""

class MoreWorkoutsViewController: UIViewController
{
    //# MARK: - Outlets
    
    
    //# MARK: - Variables
    
    var moreWorkoutDict = [String: [String]]()
    
    //# MARK: - Functions
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.title = "More Workouts"
        
        
        let path = Bundle.main.path(forResource: "MoreWorkouts", ofType: "plist")
        
        if let validPath = path
        {
            let dict = NSDictionary(contentsOfFile: validPath)
            
            if let validDict = dict
            {
                moreWorkoutDict = validDict as! [String : [String]]
                
                let titleArrays = validDict.allKeys
                
                let allView = view.subviews
                
                for i in 0..<allView.count
                {
                    if allView[i].tag == 10//is UIButton
                    {
                        let button = allView[i] as! UIButton
                        
                        button.setTitle(String(describing: titleArrays[i]), for: .normal)
                        button.backgroundColor = themeColor
                        button.setTitleColor(textColor, for: .normal)
                        button.titleLabel?.font = appFont
                        button.layer.borderColor = borderColor
                        button.layer.borderWidth = 3
                        button.layer.cornerRadius = 5
                        button.clipsToBounds = true
                        
                        button.addTarget(self, action: #selector(MoreWorkoutsViewController.goToDetails(sender:)), for: .touchUpInside)
                        
                    }
                }
            }
        }
        
    }
    func goToDetails(sender: UIButton)
    {
        if let title = sender.titleLabel?.text, let array = moreWorkoutDict[title]
        {
            moreWorkoutTitleText = title
            
            moreDetailsArray = array
            
            performSegue(withIdentifier: "moreDetails", sender: self)
            
        }
    }
    
    @IBAction func closeDetailsVC(segue: UIStoryboardSegue)
    {
    }
    
    //# MARK: - Actions
    
    
    //# TODO: - Add features
    
    
    //# FIXME: - Bug
}



