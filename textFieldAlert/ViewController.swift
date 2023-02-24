//
//  ViewController.swift
//  textFieldAlert
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/02/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func TextFieldAlert() {
        
        let alert = UIAlertController(title: "Sign In with Google Account", message: "Please Sign In", preferredStyle: .alert)
        
        // MARK: - TextFields Created
        
        alert.addTextField { textField in
            textField.placeholder = "Enter email"
            textField.returnKeyType = .next
            textField.keyboardType = .emailAddress
        }
        
        alert.addTextField { textField in
            textField.placeholder = "Enter Password"
            textField.returnKeyType = .continue
            textField.isSecureTextEntry = true
        }
        
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Continue", style: .default, handler: { action in
            
            //Read textFields
            
            guard let fields = alert.textFields, fields.count == 2 else {
                return
            }
            let emailFields = fields[0]
            let passwordFields = fields[1]
            
            
            guard let email = emailFields.text, !email.isEmpty,
                  let password = passwordFields.text, !password.isEmpty else {
                print("Invalid Entries")
                return
            }
            
            print("Email: \(email)")
            print("Password: \(password)")
            
        }))
        
        present(alert, animated: true, completion: nil)
    }


    @IBAction func btnTapped(_ sender: UIButton) {
        TextFieldAlert()
        
        
    }
}

