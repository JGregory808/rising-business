//
//  AboutUs.swift
//  RisingBusiness
//
//  Created by Kerin Grewal on 12/7/15.
//  Copyright © 2015 GAI. All rights reserved.
//

import UIKit

class AboutUs: UIViewController, UITextFieldDelegate {
    
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
    
    
}
