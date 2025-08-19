//
//  ForgotPasswordViewController.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/15/25.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Forgot Password View Controller")
        // Do any additional setup after loading the view.
    }

    @IBAction func sendCodeAction(_ sender: Any) {
        navigateToNextVerificationScreen()
        
    }
    
    //MARK: Helper functions
    func navigateToNextVerificationScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "VerificationViewController") as! VerificationViewController
        navigationController?.pushViewController(nextVC, animated: true)
    }
    

}
