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
        print("Send Code Button has been pressed")
        print("Email: \(email.text ?? "")")
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
