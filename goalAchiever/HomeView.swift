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
    
    @IBOutlet weak var countDownView: UIView!
    @IBOutlet weak var countDown: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    var timer = NSTimer()

    override func viewDidLoad() {
        super.viewDidLoad()
        goal.text = goal.text
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target:self, selector: "updateCounter", userInfo: nil, repeats: true)

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
    
    @IBAction func countDownAction(sender: AnyObject) {
        countDownView.hidden = false
    }
    
    @IBAction func confirmCountDown(sender: AnyObject) {
        countDownView.hidden = true
    }
}

extension NSTimeInterval {
    var time:String {
        return String(format:"%02ddays", Int(self/86400))
    }
}