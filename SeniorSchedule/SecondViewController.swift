//
//  SecondViewController.swift
//  SeniorSchedule
//
//  Created by Sunny on 2016/8/28.
//  Copyright © 2016年 Sunny. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDelegate {
    
    var subjects = ["國文","英文","數學","地理","歷史","公民","物理","化學","地科","生物","術科","其他"]
    @IBOutlet weak var subjectText: UITextField!
    
    @IBOutlet weak var typeClass: UISegmentedControl!
    @IBOutlet weak var typePractice: UISegmentedControl!
    @IBOutlet weak var typeRange: UISegmentedControl!
    
    
    @IBOutlet weak var time1: UITextField!
    @IBOutlet weak var time2: UITextField!
    @IBOutlet weak var range1: UITextField!
    @IBOutlet weak var range2: UITextField!
//    let timeToTime = "~"
//    let rangeToRange = "~"
    
    
    
    @IBOutlet weak var labelType: UILabel!
    @IBOutlet weak var labelPractice: UILabel!
    @IBOutlet weak var labelRange: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var firstVC: FirstViewController = segue.destinationViewController as! FirstViewController
        
    }
    
    
    
    
    
    
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView!) -> UIView
    {
        let pickerLabel = UILabel()
        pickerLabel.textColor = UIColor.blackColor()
        pickerLabel.text = subjects[row]
        pickerLabel.font = UIFont(name: pickerLabel.font.fontName, size: 15)
        pickerLabel.textAlignment = NSTextAlignment.Center
        return pickerLabel
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return subjects.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return subjects[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        subjectText.text = subjects[row]
    }
    
    @IBAction func typeClass(sender: AnyObject) {
        if typeClass.selectedSegmentIndex == 0 {
            labelType.text = "補習"
        }else if typeClass.selectedSegmentIndex == 1 {
            labelType.text = "進度"
        }else if typeClass.selectedSegmentIndex == 2 {
            labelType.text = "複習"
        }
    }
    
    @IBAction func typePractice(sender: AnyObject) {
        if typePractice.selectedSegmentIndex == 0{
            labelPractice.text = "考卷"
        }else if typePractice.selectedSegmentIndex == 1{
            labelPractice.text = "習作"
        }else if typePractice.selectedSegmentIndex == 2{
            labelPractice.text = "課本"
        }else if typePractice.selectedSegmentIndex == 3{
            labelPractice.text = "參考書"
        }else if typePractice.selectedSegmentIndex == 4{
            labelPractice.text = "歷屆"
        }else{
            labelPractice.hidden = true
        }
    }
   
    @IBAction func typeRange(sender: AnyObject) {
        if typeRange.selectedSegmentIndex == 0{
            labelRange.text = "頁"
        }else if typeRange.selectedSegmentIndex == 1{
            labelRange.text = "課"
        }else if typeRange.selectedSegmentIndex == 2{
            labelRange.text = "章"
        }else if typeRange.selectedSegmentIndex == 3{
            labelRange.text = "冊"
        }else{
            labelRange.hidden = true
        }
    }
    
    
    
    @IBAction func confirm(sender: AnyObject) {
        
        
    }
    
    

}