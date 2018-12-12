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
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var button0: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let destination = segue.destination as! ItemViewController
        destination.dataArray = dataArray[outIndex]
    }
    @IBAction func largeTapped(_ sender: Any) {
        self.outIndex = 0
        //self.outData = self.dataArray[0]

    }
    @IBAction func mediumTapped(_ sender: Any) {
        self.outIndex = 1
        //self.outData = self.dataArray[1]
    }
    @IBAction func smallTapped(_ sender: Any) {
        self.outIndex = 2
        //self.outData = self.dataArray[2]
    }
    

}
