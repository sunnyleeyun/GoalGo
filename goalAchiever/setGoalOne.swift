//
//  SetGoalOne.swift
//  goalAchiever
//
//  Created by Sunny on 2016/9/8.
//  Copyright © 2016年 Sunny. All rights reserved.
//

import UIKit

class SetGoalOne: UIViewController {
    
    @IBOutlet weak var goalSchoolMajor: UITextField!
    @IBOutlet weak var totalGoal: UITextField!
    @IBOutlet weak var Mandarin: UITextField!
    @IBOutlet weak var English: UITextField!
    @IBOutlet weak var Math: UITextField!
    @IBOutlet weak var SocialStudy: UITextField!
    @IBOutlet weak var Science: UITextField!
    @IBOutlet weak var `switch`: UISwitch!
    @IBAction func switchOn(_ sender: AnyObject) {
        if `switch`.isOn{
            itemOne.isHidden = false
            scoreOne.isHidden = false
            itemTwo.isHidden = false
            scoreTwo.isHidden = false
        } else {
            itemOne.isHidden = true
            scoreOne.isHidden = true
            itemTwo.isHidden = true
            scoreTwo.isHidden = true
        }
    }
    @IBOutlet weak var itemOne: UITextField!
    @IBOutlet weak var scoreOne: UITextField!
    @IBOutlet weak var itemTwo: UITextField!
    @IBOutlet weak var scoreTwo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DestViewController : HomeView = segue.destination as! HomeView
        DestViewController.goalOut = goalSchoolMajor.text!
        DestViewController.totalGoalString = totalGoal.text!
        DestViewController.MandarinString = Mandarin.text!
        DestViewController.EnglishString = English.text!
        DestViewController.MathString = Math.text!
        DestViewController.SocialStudyString = SocialStudy.text!
        DestViewController.ScienceString = Science.text!
    }
    
    
}
