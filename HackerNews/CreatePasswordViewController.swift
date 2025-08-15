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

        // Do any additional setup after loading the view.
        print("Create Password View Controller")
        
    }
    
    @IBAction func resetPasswordAction(_ sender: Any) {
        print("Reset Password Button has been pressed")
        if(newPassword.text == confirmPassword.text){
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
