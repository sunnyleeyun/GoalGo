//
//  SetGoalTwo.swift
//  goalAchiever
//
//  Created by Sunny on 2016/9/8.
//  Copyright © 2016年 Sunny. All rights reserved.
//

import UIKit

class SetGoalTwo: UIViewController {
    @IBOutlet weak var swich: UISwitch!
    @IBAction func swichOnOff(sender: AnyObject) {
        if swich.on{
            itemOne.hidden = false
            scoreOne.hidden = false
            itemTwo.hidden = false
            scoreTwo.hidden = false
        } else {
            itemOne.hidden = true
            scoreOne.hidden = true
            itemTwo.hidden = true
            scoreTwo.hidden = true
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
    
    
}