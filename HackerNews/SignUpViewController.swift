//
//  SignUpViewController.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/15/25.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("Signup View Controller")
    }
    
    @IBAction func signupAction(_ sender: Any) {
        print("Sign up button has been pressed")
        print("First Name: \(firstName.text ?? "") \nLast Name: \(lastName.text ?? "") \nEmail: \(email.text ?? "")")
        if(password.text == confirmPassword.text){
            print("Password matches")
        }
        else{
            print("Password does not match")
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

}
