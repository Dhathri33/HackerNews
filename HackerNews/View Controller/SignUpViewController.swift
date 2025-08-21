//
//  SignUpViewController.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/15/25.
//

import UIKit
import Foundation

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: Signup Action
    
    @IBAction func signupAction(_ sender: Any) {
        validateUser(firstName.text!, lastName.text!, email.text!, password.text!, confirmPassword.text!)
        print("Sign up Successful")
        
    }
    
    
    
    //MARK: Helper functions
    
    func validateValueifPresent(_ field: String) -> Bool{
        if field.isEmpty {
            return false
        }
        return true
    }
    
    func validateMatch(_ password: String, _ confirmPassword: String) -> Bool {
        return password == confirmPassword
    }
    
    func validateFormat(_ email: String) -> Bool {
        return email.lowercased().hasSuffix("@gmail.com")
    }
    
    func validateLength(_ password: String) -> Bool {
        if password.count < 4 {
            return false
        }
        return true
    }
    
    func validateUser(_ firstname: String, _ lastname: String, _ email: String, _ password: String, _ confirmPassword: String){
        if !validateValueifPresent(firstname) && !validateValueifPresent(lastname) && !validateValueifPresent(email) && !validateValueifPresent(password) && !validateValueifPresent(confirmPassword) {
            print("Enter one of the missing fields")
            return
        }
 
        if !validateFormat(email) {
            print("Email must be in the format of username@gmail.com")
            return
        }
        if !validateLength(password) {
            print("Password must be at least 4 characters long")
        }
        if !validateMatch(password, confirmPassword) {
            print("Passwords do not match")
            return
        }
    }

}
