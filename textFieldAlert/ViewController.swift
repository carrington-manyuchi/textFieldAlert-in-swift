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
        
        
        
        alert.addTextField { <#UITextField#> in
            <#code#>
        }
    }


    @IBAction func btnTapped(_ sender: UIButton) {
    }
}

