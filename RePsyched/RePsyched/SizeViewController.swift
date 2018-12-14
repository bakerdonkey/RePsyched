//
//  SizeViewController.swift
//  RePsyched
//
//  Created by Sam Kochanski on 12/11/18.
//  Copyright © 2018 Sam Kochanski. All rights reserved.
//

import UIKit

class SizeViewController: UIViewController {
    var outIndex : Int = 0
    var dataArray : [[Item]]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        [button0, button1, button2].forEach({$0?.layer.cornerRadius = 5})

    }

    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "large" {
            let destination = segue.destination as! ItemViewController
            destination.dataArray = dataArray[0]
        }
        if segue.identifier == "medium" {
            let destination = segue.destination as! ItemViewController
            destination.dataArray = dataArray[1]
        }
        if segue.identifier == "small" {
            let destination = segue.destination as! ItemViewController
            destination.dataArray = dataArray[2]
        }

    }

}
