//
//  LoginViewController.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/15/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: Login Action

    @IBAction func loginAction(_ sender: Any) {
        validateUser(email.text!,password.text!)
        print("Login Successful!")
    }
    
    @IBAction func forgotPasswordAction(_ sender: Any) {
        navigateToNextForgotPasswordScreen( )
    }
    
    //MARK: Helper Functions
    
    func navigateToNextForgotPasswordScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let forgotPasswordViewController = storyboard.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as? ForgotPasswordViewController {
            self.navigationController?.pushViewController(forgotPasswordViewController, animated: true)
        }
    }
    
    func validateValueifPresent(_ field: String) -> Bool{
        if field.isEmpty {
            return false
        }
        return true
    }
    
    //MARK: Validate the email format
    func validateFormat(_ email: String) -> Bool {
        return email.lowercased().hasSuffix("@gmail.com")
    }
    
    //MARK: Validate the length
    func validateLength(_ password: String) -> Bool {
        if password.count < 4 {
            return false
        }
        return true
    }
    
    //MARK: Validate User
    func validateUser(_ email: String, _ password: String) {
        if !validateValueifPresent(email) && !validateValueifPresent(password) {
            print("Enter one of the missing fields")
            return
        }
        if !validateFormat(email) {
            print("Email must be in the format of username@gmail.com")
            return
        }
        if !validateLength(password) {
            print("Password must be at least 4 characters long")
            return
        }
    }
    }
