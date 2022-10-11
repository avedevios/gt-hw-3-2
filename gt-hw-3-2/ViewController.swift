//
//  ViewController.swift
//  gt-hw-3-2
//
//  Created by ake11a on 2022-10-11.
//

import UIKit

class ViewController: UIViewController {
    
    var users = ["Anton":"123",
                 "Nursultan":"321",
                 "Ian":"232"]
    
    @IBOutlet weak var forgotLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func signInButton(_ sender: Any) {
        
        var text = ""
        
        if let username = usernameTextField.text {
            if let userpassword = users[username] {
                if let password = passwordTextField.text {
                    if userpassword == password {
                        text = "Access granted!"
                    } else {
                        text = "Password is incorrect!"
                    }
                } else {
                    text = "Password is empty!"
                }
            } else {
                text = "Username is missing!"
            }
        } else {
            text = "Username is empty!"
        }
        
        print(text)
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        
        var text = ""
        
        if let username = usernameTextField.text {
            if users[username] == nil {
                if let password = passwordTextField.text {
                    
                    users[username] = password
                    text = "New user added: \n Login: \(username) || Password : \(users[username]!)"
                } else {
                    text = "Password is empty!"
                }
            } else {
                text = "Username already exist!"
            }
        } else {
            text = "Username is empty!"
        }
        
        print(text)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        forgotLabel.text = "forgot password ?"
        
        // Do any additional setup after loading the view.
    }
    
    
}

