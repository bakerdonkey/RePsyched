//
//  LandingPageViewController.swift
//  RePsyched
//
//  Created by Sam Kochanski on 12/10/18.
//  Copyright © 2018 Sam Kochanski. All rights reserved.
//

import UIKit

class LandingPageViewController: UIViewController {
    @IBOutlet weak var regButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        regButton.layer.cornerRadius = 5
        loginButton.layer.cornerRadius
            = 5
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewControlle
    }
 
    
    @IBAction func unwindToLandingPage(sender : UIStoryboardSegue){
        
    }

}
