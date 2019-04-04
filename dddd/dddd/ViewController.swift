//
//  ViewController.swift
//  dddd
//
//  Created by D7703_13 on 2019. 4. 4..
//  Copyright © 2019년 Personal Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate{
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextField.delegate = self
        myTextField.clearButtonMode = UITextField.ViewMode.always
    }
    
    @IBAction func btn(_ sender: Any) {
        let inString = myTextField.text
        print(inString!)
        myLabel.text = inString
        myTextField.text = ""
        myTextField.resignFirstResponder()
    }
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        myTextField.resignFirstResponder()
        myTextField.backgroundColor = UIColor.yellow
        return true
    }
    public func textFieldShouldClear(_ textField: UITextField) -> Bool {
        view.backgroundColor = UIColor.green
        return true
    }

}
