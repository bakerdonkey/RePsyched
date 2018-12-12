//
//  MainViewController.swift
//  RePsyched
//
//  Created by Sam Kochanski on 12/10/18.
//  Copyright © 2018 Sam Kochanski. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var profile : Profile!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var paperLabel: UILabel!
    @IBOutlet weak var plasticLabel: UILabel!
    @IBOutlet weak var metalLabel: UILabel!
    
    
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    @IBOutlet weak var leaderboardButton: UIButton!
    @IBOutlet weak var newItemButton: UIButton!
    
    override func viewDidAppear(_ animated: Bool) {
        nameLabel.text = profile.name
        pointsLabel.text = "\(profile.points) points"
        paperLabel.text = "\(profile.paper)lbs"
        plasticLabel.text = "\(profile.plastic)lbs"
        metalLabel.text = "\(profile.metal)lbs"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        [settingsButton, logoutButton, leaderboardButton, newItemButton, profileView].forEach({$0?.layer.cornerRadius = 5})
        if profile == nil {
            profile = Profile(name: "mrpeanut", password: "password",points: 327, plastic: 21.2, paper: 32.5, metal: 62.22)
        }
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "leaderboardSegue" {
            let lb = segue.destination as! LeaderboardViewController
            lb.me = self.profile
        }
        if segue.identifier == "settingsSegue" {
            let s = segue.destination as! SettingsViewController
            s.profile = self.profile
        }
    }
 
    
    @IBAction func unwindToMainVC(sender: UIStoryboardSegue) {
        
    }
    
    
}
