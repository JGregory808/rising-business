//
//  EmailPage.swift
//  RisingBusiness
//
//  Created by Jack Gregory on 4/25/16.
//  Copyright © 2016 GAI. All rights reserved.
//

import UIKit
import MessageUI

class EmailPage: UIViewController, MFMailComposeViewControllerDelegate, UITextFieldDelegate, UITextViewDelegate {
    
    @IBOutlet weak var subject: UITextField!
    @IBOutlet weak var body: UITextView!
    
    @IBAction func sendMail(sender: AnyObject) {
        print("this is a test")
        let picker = MFMailComposeViewController()
        picker.mailComposeDelegate = self
        picker.setSubject(subject.text!)
        picker.setMessageBody(body.text!, isHTML: true)
        picker.setToRecipients(["jhgv@bu.edu"])
        presentViewController(picker, animated: true, completion: nil)
    }
    
    @IBOutlet weak var email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        subject.delegate = self
        body.delegate = self
        email.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MFMailComposeViewControllerDelegate
    
    // 1
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    // UITextFieldDelegate
    
    // 2
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    // UITextViewDelegate
    
    // 3
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        body.text = textView.text
        
        if text == "\n" {
            textView.resignFirstResponder()
            
            return false
        }
        
        return true
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
