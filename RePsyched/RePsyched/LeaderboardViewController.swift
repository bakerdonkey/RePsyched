//
//  LeaderboardViewController.swift
//  RePsyched
//
//  Created by Sam Kochanski on 12/10/18.
//  Copyright © 2018 Sam Kochanski. All rights reserved.
//

import UIKit
let mock =  [
    Profile(name: "jonny", password: "a", points: 445, plastic: 2.0, paper: 34.0, metal: 120.0),
    Profile(name: "janedoe", password: "a", points: 122, plastic: 5.0, paper: 43.0, metal: 33.0),
    Profile(name: "globert", password: "a", points: 765, plastic: 332.0, paper: 32.0, metal: 96.0),
    Profile(name: "horton", password: "a", points: 320, plastic: 32.0, paper: 36.0, metal: 43.0),
    Profile(name: "Harvey", password: "a", points: 101, plastic: 75.0, paper: 85.0, metal: 1.0),
    Profile(name: "Cait", password: "a", points: 574, plastic: 77.0, paper: 24.0, metal: 76.0),
    Profile(name: "dgbnr", password: "a", points: 444, plastic: 64.0, paper: 75.0, metal: 91.0),
    Profile(name: "effo", password: "a", points: 890, plastic: 108.0, paper: 5.0, metal: 122.0),
    Profile(name: "TEE", password: "a", points: 53, plastic: 42.0, paper: 51.0, metal: 223.0),
    Profile(name: "steview", password: "a", points: 235, plastic: 23.0, paper: 211.0, metal: 4.0),
    Profile(name: "googge", password: "a", points: 745, plastic: 252.0, paper: 55.0, metal: 153.0),
    Profile(name: "johny", password: "a", points: 40, plastic: 5.0, paper: 4.0, metal: 14.0),
            ]
class LeaderboardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var leaderboardHighlight: UIView!
    
    @IBOutlet weak var backButton: UIButton!
    var globalTable = [Profile]()
    let colors = ColorSet()
    
    var me : Profile!
    
    @IBOutlet weak var modalNameLabel: UILabel!
    @IBOutlet weak var modalPlasticLabel: UILabel!
    @IBOutlet weak var modalPaperLabel: UILabel!
    @IBOutlet weak var modalMetalLabel: UILabel!
    @IBOutlet weak var modalBackButton: UIButton!
    
    override func viewDidAppear(_ animated: Bool) {
        self.globalTable.append(me)
        self.globalTable.sort(by: {(lhs: Profile, rhs: Profile) -> Bool in
            return lhs.points > rhs.points
        })
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.layer.cornerRadius = 12
        // Do any additional setup after loading the view.
        self.globalTable = mock
        self.globalTable.sort(by: {(lhs: Profile, rhs: Profile) -> Bool in
            return lhs.points > rhs.points
        })
        self.backButton.layer.cornerRadius = 5
        self.leaderboardHighlight.layer.cornerRadius = 12
        self.profilePopover.layer.borderWidth = 1
        self.profilePopover.layer.borderColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0).cgColor
        self.profilePopover.layer.cornerRadius = 10
        self.modalBackButton.layer.cornerRadius = 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return globalTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var suffex = ""
        if indexPath.row == 0 {
            suffex = "st"
        }
        else if indexPath.row == 1 {
            suffex = "nd"
        }
        else if indexPath.row == 2{
            suffex = "rd"
        }
        else {
            suffex = "th"
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "leaderboardCell", for: indexPath) as! LeaderboardTableViewCell
        let profile = globalTable[indexPath.row]
        if profile.name == me.name {
            cell.highlightView.backgroundColor = colors.highlight
        }
        cell.nameLabel.text = profile.name
        cell.pointsLabel.text = String(profile.points) + " points"
        cell.placeLabel.text = "\(indexPath.row + 1)\(suffex)"
        cell.highlightView.layer.cornerRadius = 5
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.view.addSubview(profilePopover)
        profilePopover.center = self.view.center
        
        
        let selectedProfile = globalTable[indexPath.row]
        
        if selectedProfile.name == me.name {
            profilePopover.layer.backgroundColor = colors.highlight.cgColor
        }
        else {
            profilePopover.layer.backgroundColor = colors.background.cgColor
        }
        
        self.modalNameLabel.text = selectedProfile.name + " - \(selectedProfile.points) points"
        self.modalPlasticLabel.text = "Plastic: \(selectedProfile.plastic)lbs"
        self.modalPaperLabel.text = "Paper: \(selectedProfile.paper)lbs"
        self.modalMetalLabel.text = "Metal: \(selectedProfile.metal)lbs"
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: - Popover stuff
    
    @IBOutlet var profilePopover: UIView!
    
    @IBAction func modalBackButtonTapped(_ sender: UIButton) {
        self.profilePopover.removeFromSuperview()
        
    }
    
    
}
