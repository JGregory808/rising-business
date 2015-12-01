//
//  ViewController.swift
//  RisingBusiness
//
//  Created by Jack Gregory on 11/2/15.
//  Copyright © 2015 GAI. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.emailField.delegate = self
        self.passwordField.delegate = self
        self.emailField.returnKeyType = UIReturnKeyType.Done
        self.passwordField.returnKeyType = UIReturnKeyType.Done
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    


}

