//
//  MaterialViewController.swift
//  RePsyched
//
//  Created by Sam Kochanski on 12/10/18.
//  Copyright © 2018 Sam Kochanski. All rights reserved.
//

import UIKit



class MaterialViewController: UIViewController {
    
    let dataArray = data
    
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        [button0, button1, button2].forEach({$0?.layer.cornerRadius = 5})

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "plastic" {
            let destination = segue.destination as! SizeViewController
            destination.dataArray = dataArray[0]
        }
        if segue.identifier == "paper" {
            let destination = segue.destination as! SizeViewController
            destination.dataArray = dataArray[1]
        }
        if segue.identifier == "metal" {
            let destination = segue.destination as! SizeViewController
            destination.dataArray = dataArray[2]
        }
    }
    
}
