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
    
    @IBAction func signupAction(_ sender: Any) {
        print("Sign up button has been clicked")
        if !validateValueifPresent(firstName.text!) && !validateValueifPresent(lastName.text!) && !validateValueifPresent(email.text!) && !validateValueifPresent(password.text!) && !validateValueifPresent(confirmPassword.text!) {
            print("Enter one of the missing fields")
            return
        }
 
        if !validateFormat(email.text!) {
            print("Email must be in the format of username@gmail.com")
            return
        }
        if !validateLength(password.text!) {
            print("Password must be at least 4 characters long")
        }
        if !validateMatch(password.text!, confirmPassword.text!) {
            print("Passwords do not match")
            return
        }
    }

}
