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
        
        if isDataFilled() {
            if let userpassword = users[usernameTextField.text!] {
               text = checkPassword(userpassword)
            } else {
                text = "Username is missing"
            }
        } else {
            text = "Please fill both entryes"
        }
        
        print(text)
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        
        var text = ""
        
        if isDataFilled() {
            let usernameFilled = usernameTextField.text!
            
            if users[usernameFilled] == nil {
                users[usernameFilled] = passwordTextField.text
                
                text = "New user added: \n Login: \(usernameFilled) || Password : \(users[usernameFilled]!)"
            } else {
                text = "Username already exist!"
            }
        } else {
            text = "Please fill both entryes"
        }
        
        print(text)
    }
    
    func isDataFilled() -> Bool {
        if let usernameData = usernameTextField.text,
           let passwordData = passwordTextField.text {
            
            if usernameData.isEmpty || passwordData.isEmpty {
                return false
            }
        }
        return true
    }
    
    func checkPassword(_ checkingPassword: String) -> String{
        if checkingPassword == passwordTextField.text {
            return "Access granted"
        } else {
            return "Access denied. Password is incorrect"
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        forgotLabel.text = "forgot password ?"
        
        // Do any additional setup after loading the view.
    }
    
    
}

