//
//  ConfirmPasswordViewController.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/15/25.
//

import UIKit

class CreatePasswordViewController: UIViewController {

    @IBOutlet weak var newPassword: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func resetPasswordAction(_ sender: Any) {
        navigateToNextPasswordChanged()
    }
    
    //MARK: Helper Functions
    
    func navigateToNextPasswordChanged() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "PasswordChangedViewController")
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}
