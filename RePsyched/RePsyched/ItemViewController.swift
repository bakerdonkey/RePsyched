//
//  ItemViewController.swift
//  RePsyched
//
//  Created by Sam Kochanski on 12/11/18.
//  Copyright © 2018 Sam Kochanski. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {
    var dataArray : [Item]!
    var outItem : Item!
    
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    override func viewDidAppear(_ animated: Bool) {
        button0.setTitle(dataArray[0].name, for: .normal)
        button1.setTitle(dataArray[1].name, for: .normal)
        button2.setTitle(dataArray[2].name, for: .normal)
        button3.setTitle(dataArray[3].name, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        [button0, button1, button2, button3].forEach({$0?.layer.cornerRadius = 5})
        // Do any additional setup after loading the view.

    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let destination = segue.destination as! MainViewController
        destination.profile.points += Int(outItem.points)
        if outItem.type == .plastic {
            destination.profile.plastic += outItem.weight
        }
        else if outItem.type == .paper {
            destination.profile.paper += outItem.weight
        }
        else {
            destination.profile.metal += outItem.weight
        }
    }
    @IBAction func button1Tapped(_ sender: Any) {
        
        self.outItem = dataArray[0]
    }
    @IBAction func button2Tapped(_ sender: Any) {
        self.outItem = dataArray[1]
    }
    
    @IBAction func button3Tapped(_ sender: Any) {
        self.outItem = dataArray[2]
    }
    @IBAction func button4Tapped(_ sender: Any) {
        self.outItem = dataArray[3]
    }
    
}
