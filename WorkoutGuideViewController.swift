//
//  WorkoutGuideViewController.swift
//  WorkoutGuide
//
//  Created by Daniel Springer on 23/04/2017.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import UIKit

var detailsArray = [String]()
var workoutTitleText = ""

class WorkoutGuideViewController: UIViewController
{
    
    //# MARK: - Outlets
    
    
    //# MARK: - Variables
    
    var workoutDict = [String: [String]]()
    
    //# MARK: - Functions
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.title = "Choose your workout"
        
        workoutDict = appDelegate.getPlistDict(plistName: "Workouts") as! [String : [String]]
        
        let titleArrays = Array(workoutDict.keys)
        
        let allView = view.subviews
        
        for i in 0..<allView.count
        {
            if allView[i].tag == 10
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
                
                button.addTarget(self, action: #selector(WorkoutGuideViewController.goToDetails(sender:)), for: .touchUpInside)
            }
        }
    }
    
    
    
    func goToDetails(sender: UIButton)
    {
        if let title = sender.titleLabel?.text, let array = workoutDict[title]
        {
            workoutTitleText = title
            detailsArray = array
            performSegue(withIdentifier: "details", sender: self)
        }
    }
    
    //# MARK: - Actions
    
    @IBAction func closeDetailsVC(segue: UIStoryboardSegue)
    {
    }
    
    //# TODO: - Add features
    
    
    //# FIXME: - Bug
    
}
