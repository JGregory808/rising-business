//
//  emailUsViewController.swift
//  RisingBusiness
//
//  Created by Alex O'Connor on 4/25/16.
//  Copyright © 2016 GAI. All rights reserved.
//

import UIKit
import MessageUI

class emailUsViewController: UIViewController, MFMailComposeViewControllerDelegate  {

    @IBOutlet weak var Subject: UITextField!
    @IBOutlet weak var Body: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func EmailUs(sender: AnyObject) {
        
        var ToRecipients = ["axoconnor8@gmail.com"]
        var mc: MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
            mc.setToRecipients(ToRecipients)
        
        self.presentViewController(mc, animated: true, completion: nil)
        
    }

}
