//
//  VerificationViewController.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/15/25.
//

import UIKit

class VerificationViewController: UIViewController {

    @IBOutlet weak var firstDigit: UITextField!
    @IBOutlet weak var secondDigit: UITextField!
    @IBOutlet weak var thirdDigit: UITextField!
    @IBOutlet weak var fourthDigit: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func verifyAction(_ sender: Any) {
        navigateToNextCreatePasswordScreen()
    }
    
    //MARK: Helper Functions
    
    func navigateToNextCreatePasswordScreen( ) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let createPasswordVC = storyboard.instantiateViewController(withIdentifier: "CreatePasswordViewController") as! CreatePasswordViewController
        navigationController?.pushViewController(createPasswordVC, animated: true)
    }

}
