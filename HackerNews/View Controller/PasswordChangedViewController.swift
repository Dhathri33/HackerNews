//
//  PasswordChangedViewController.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/15/25.
//

import UIKit

class PasswordChangedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("Password Changed View Controller")
    }
    
    @IBAction func backToLoginAction(_ sender: Any) {
        navigateToNextLoginScreen()
    }
    
    // MARK: Helper Functions
    func navigateToNextLoginScreen() {
        let loginViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(loginViewController, animated: true)
    }

}
