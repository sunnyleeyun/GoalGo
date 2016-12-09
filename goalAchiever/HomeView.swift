//
//  ViewController.swift
//  goalAchiever
//
//  Created by Sunny on 2016/9/8.
//  Copyright © 2016年 Sunny. All rights reserved.
//

import UIKit

class HomeView: UIViewController {

    @IBOutlet weak var goal: UILabel!
    var goalOut = String()
    
    @IBOutlet weak var totalGoal: UILabel!
    @IBOutlet weak var Mandarin: UILabel!
    @IBOutlet weak var English: UILabel!
    @IBOutlet weak var Math: UILabel!
    @IBOutlet weak var SocialStudy: UILabel!
    @IBOutlet weak var Science: UILabel!
    var totalGoalString = String()
    var MandarinString = String()
    var EnglishString = String()
    var MathString = String()
    var SocialStudyString = String()
    var ScienceString = String()
    
    @IBOutlet weak var countDownView: UIView!
    @IBOutlet weak var countDown: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        goal.text! = goalOut
        totalGoal.text! = totalGoalString
        Mandarin.text! = MandarinString
        English.text! = EnglishString
        Math.text! = MathString
        SocialStudy.text! = SocialStudyString
        Science.text! = ScienceString
        
        timer = Timer.scheduledTimer(timeInterval: 1, target:self, selector: #selector(HomeView.updateCounter), userInfo: nil, repeats: true)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateCounter() {
        let timeLeft = datePicker.date.timeIntervalSinceNow
        countDown.text = timeLeft.time
    }
    
    @IBAction func countDownAction(_ sender: AnyObject) {
        countDownView.isHidden = false
    }
    
    @IBAction func confirmCountDown(_ sender: AnyObject) {
        countDownView.isHidden = true
    }
}

extension TimeInterval {
    var time:String {
        return String(format:"%02d days", Int(self/86400))
    }
}
