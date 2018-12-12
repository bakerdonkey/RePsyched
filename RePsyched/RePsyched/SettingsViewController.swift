//
//  SettingsViewController.swift
//  RePsyched
//
//  Created by Sam Kochanski on 12/12/18.
//  Copyright © 2018 Sam Kochanski. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    var profile : Profile!
    let colors = ColorSet()
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var panelBacking: UIView!
    
    @IBOutlet weak var backButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.confirmButton.layer.backgroundColor = colors.disabled.cgColor
        confirmButton.isEnabled = false
        [panelBacking, backButton, confirmButton].forEach({$0?.layer.cornerRadius = 5})
        [usernameField, passwordField].forEach({ $0.addTarget(self, action: #selector(editingChanged), for: .editingChanged) })
    }
    
    @objc func editingChanged(_ textField: UITextField) {
        if textField.text?.characters.count == 1 {
            if textField.text?.characters.first == " " {
                textField.text = ""
                return
            }
        }
        guard
            let username = usernameField.text, !username.isEmpty,
            let password = passwordField.text, !password.isEmpty,
            password == self.profile.password
            else {
                self.confirmButton.layer.backgroundColor = colors.disabled.cgColor
                self.confirmButton.isEnabled = false
                return
        }
        self.confirmButton.layer.backgroundColor = colors.highlight.cgColor
        self.confirmButton.isEnabled = true
    }
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let d = segue.destination as! MainViewController
        d.profile = self.profile
    }
    
    @IBAction func confirmButtonTouched(_ sender: Any) {
        self.profile.name = self.usernameField.text!
        self.usernameField.text = ""
        self.confirmButton.isEnabled = false
        
    }
    
}
