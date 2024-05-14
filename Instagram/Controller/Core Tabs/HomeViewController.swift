//
//  ViewController.swift
//  Instagram
//
//  Created by Fırat Güler on 30.04.2024.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        handleNotAuthenticated()
       
    }
    
    private func handleNotAuthenticated() {
        
        if Auth.auth().currentUser == nil {
            
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
        
    }

}

