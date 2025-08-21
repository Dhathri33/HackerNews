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
        navigateToNextSignUpScreen()
    }
    
    @IBAction func loginAction(_ sender: Any) {
        navigateToNextLoginScreen( )
    }
    
    func navigateToNextSignUpScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let signUpViewController = storyboard.instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController {
            self.navigationController?.pushViewController(signUpViewController, animated: true)
        }
    }
    
    func navigateToNextLoginScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let loginViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController {
            self.navigationController?.pushViewController(loginViewController, animated: true)
        }
    }
}

