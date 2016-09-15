//
//  AboutUs.swift
//  RisingBusiness
//
//  Created by Kerin Grewal on 12/7/15.
//  Copyright © 2015 GAI. All rights reserved.
//

import UIKit
import MessageUI

class AboutUs: UIViewController, UITextFieldDelegate, MFMailComposeViewControllerDelegate {
    
    @IBOutlet var ScrollView: UIScrollView!
    //@IBOutlet weak var AboutUsTextBox: UITextView!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.AboutUsTextBox.userInteractionEnabled = false
            
            ScrollView.contentSize.height = 1000
            
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func EmailUs(sender: AnyObject) {
        
        let SubjectText = ""
        let MessageBody = ""
        let toRecipients = ["aoconno8@bu.edu"]
        let mc: MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setToRecipients(toRecipients)
        mc.setSubject(SubjectText)
        mc.setMessageBody(MessageBody, isHTML: false)
        
        self.presentViewController(mc, animated: true, completion: nil)
        
        
    }
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        switch result.rawValue{
            case MFMailComposeResultCancelled.rawValue:
                NSLog("Mail Cancelled")
            case MFMailComposeResultSaved.rawValue:
                NSLog("Mail Saved")
            case MFMailComposeResultSent.rawValue:
                NSLog("Mail Sent")
            case MFMailComposeResultFailed.rawValue:
                NSLog("Mail Sent Failure: %@", [error!.localizedDescription])
            default:
                break
        }
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}

 