//
//  MelanieQ&AViewController.swift
//  RisingBusiness
//
//  Created by Alex O'Connor on 4/25/16.
//  Copyright © 2016 GAI. All rights reserved.
//

import UIKit

class MelanieQ_AViewController: UIViewController {


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            ScrollView.contentSize.height = 500
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
