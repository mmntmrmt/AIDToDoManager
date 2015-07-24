//
//  AddToDoViewController.swift
//  AIDToDoManager
//
//  Created by Ryo Morimoto on 2015/07/24.
//  Copyright (c) 2015年 Ryo Morimoto. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var deadLineTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .DateAndTime
        datePicker.addTarget(self, action: Selector("updateDeadLineTextField:"), forControlEvents: .ValueChanged)
        deadLineTextField.inputView = datePicker
    }
    func updateDeadLineTextField(sender: UIDatePicker){
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.dateFormat = "yyyy/MM/dd HH:mm"
        deadLineTextField.text = String(_cocoaString: sender.date)
        
    }
    
    
    
  
    @IBAction func addButtonTouchUpInside(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func cancelButtonTouchUpInside(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
