//
//  MeetTheTeam.swift
//  RisingBusiness
//
//  Created by Alex O'Connor on 4/4/16.
//  Copyright © 2016 GAI. All rights reserved.
//

import UIKit

class MeetTheTeam: UIViewController{

    @IBOutlet weak var ScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            ScrollView.contentSize.height = 1000
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
