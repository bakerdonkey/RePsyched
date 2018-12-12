//
//  LoginPageViewController.swift
//  RePsyched
//
//  Created by Sam Kochanski on 12/10/18.
//  Copyright © 2018 Sam Kochanski. All rights reserved.
//

import UIKit

class LoginPageViewController: UIViewController {
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    let colors = ColorSet()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 5
        backButton.layer.cornerRadius = 5
        loginButton.isEnabled = false
        loginButton.layer.backgroundColor = colors.disabled.cgColor
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
            let password = passwordField.text, !password.isEmpty
        else {
                self.loginButton.layer.backgroundColor = colors.disabled.cgColor
                self.loginButton.isEnabled = false
                return
            }
            self.loginButton.layer.backgroundColor = colors.highlight.cgColor
            self.loginButton.isEnabled = true
    }

    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let name = self.usernameField.text
        let password = self.passwordField.text
        let prof = Profile(name: name!, password: password!, points: 327, plastic: 21.2, paper: 32.5, metal: 62.22)
        
        let destination = segue.destination as! MainViewController
        destination.profile = prof
        
    }
    

}
