//
//  AddToDoViewController.swift
//  AIDToDoManager
//
//  Created by Ryo Morimoto on 2015/07/24.
//  Copyright (c) 2015年 Ryo Morimoto. All rights reserved.
//

import UIKit
import RealmSwift

class AddToDoViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var deadLineTextField: UITextField!
    let dateFormatter = NSDateFormatter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let datePicker = UIDatePicker()
        
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.dateFormat = "yyyy/MM/dd HH:mm"
        
        datePicker.datePickerMode = .DateAndTime
        datePicker.addTarget(self, action: Selector("updateDeadLineTextField:"), forControlEvents: .ValueChanged)
        deadLineTextField.inputView = datePicker
    }
    func updateDeadLineTextField(sender: UIDatePicker){
                deadLineTextField.text = String(_cocoaString: sender.date)
        
    }
    
    
    
  
    @IBAction func addButtonTouchUpInside(sender: UIButton) {
        let todo = ToDoModel()
        todo.title = titleTextField.text
        todo.deadLine = dateFormatter.dateFromString(deadLineTextField.text) ?? NSDate()
        let realm = Realm()
        realm.write {
            realm.add(todo, update: false)
            
        }
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func cancelButtonTouchUpInside(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
