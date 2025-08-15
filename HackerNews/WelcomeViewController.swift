//
//  ViewController.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/13/25.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Welcome Screen has been loaded")
    }

    @IBAction func signUpAction(_ sender: Any) {
        print("Sign Up button has been pressed")
    }
    
    @IBAction func loginAction(_ sender: Any) {
        print("Log In button has been pressed")
    }
    
}

