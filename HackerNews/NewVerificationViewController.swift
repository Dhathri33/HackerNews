//
//  NewVerificationViewController.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/21/25.
//

import UIKit

class NewVerificationViewController: UIViewController {
    
    var titleLabel: UILabel!
    var subTitleLabel: UILabel!
    var otpFields: [UITextField]!
    var continueButton: UIButton!
    var bottomLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .black
        
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = .systemFont(ofSize: 30, weight: .bold)

        let text = NSMutableAttributedString(
            string: "OTP ",
            attributes: [.foregroundColor: UIColor.systemRed]
        )
        text.append(NSAttributedString(
            string: "Verification",
            attributes: [.foregroundColor: UIColor.white]
        ))
        titleLabel.attributedText = text
        
        let subTitleLabel = UILabel()
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subTitleLabel.font = .systemFont(ofSize: 14)
        subTitleLabel.numberOfLines = 0
        
        let message = NSMutableAttributedString(
            string: "We have send a code to your email\n",
            attributes: [.foregroundColor: UIColor.white]
            )
        message.append(NSAttributedString(string: "m*****11@gmail.com\n", attributes: [.foregroundColor: UIColor.red]))
        message.append(NSAttributedString(string: "Please enter the code below to reset your password.", attributes: [.foregroundColor: UIColor.white]))
        subTitleLabel.attributedText = message
        
        otpFields = (0..<4).map { _ in
            let tf = UITextField()
            tf.borderStyle = .bezel
            tf.backgroundColor = .black
            tf.textColor = .white
            tf.textAlignment = .center
            tf.keyboardType = .numberPad
            tf.font = .systemFont(ofSize: 14, weight: .bold)
            tf.layer.cornerRadius = 8
            tf.layer.borderColor = UIColor.white.cgColor
            tf.layer.borderWidth = 1
            tf.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                tf.widthAnchor.constraint(equalToConstant: 69),
                tf.heightAnchor.constraint(equalToConstant: 41)
            ])
            return tf
        }
        
        // Horizontal stack view
        let otpStack = UIStackView(arrangedSubviews: otpFields)
        otpStack.axis = .horizontal
        otpStack.spacing = 12
        otpStack.distribution = .equalSpacing
        otpStack.alignment = .center
        otpStack.translatesAutoresizingMaskIntoConstraints = false
        
        let continueButton = UIButton(type: .system)
        continueButton.setTitle("  Continue", for: .normal)
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        continueButton.backgroundColor = .systemRed
        continueButton.setTitleColor(.white, for: .normal)
        continueButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        continueButton.layer.cornerRadius = 6
        continueButton.contentHorizontalAlignment = .leading
        continueButton.addTarget(self, action: #selector(verifyAction), for: .touchUpInside)
        
        bottomLabel = UILabel()
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomLabel.font = .systemFont(ofSize: 14)

        let textBottomLabel = NSMutableAttributedString(
            string: "Didn't recieved a code? ",
            attributes: [.foregroundColor: UIColor.white]
        )
        textBottomLabel.append(NSAttributedString(
            string: "Resend",
            attributes: [.foregroundColor: UIColor.systemBlue]
        ))
        bottomLabel.attributedText = textBottomLabel
        
        
        
        // Vertical layout
        let vStack = UIStackView(arrangedSubviews: [titleLabel, subTitleLabel, otpStack, continueButton, bottomLabel])
        vStack.axis = .vertical
        vStack.spacing = 20
        vStack.translatesAutoresizingMaskIntoConstraints = false
        vStack.setCustomSpacing(50, after: subTitleLabel)
        vStack.setCustomSpacing(40, after: otpStack)
        view.addSubview(vStack)

        NSLayoutConstraint.activate([
            vStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            vStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            vStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            otpStack.heightAnchor.constraint(equalToConstant: 50),
            continueButton.heightAnchor.constraint(equalToConstant: 50)
        ])

    }
    @objc func verifyAction() {
        navigateToNextCreatePasswordScreen()
    }
    
    //MARK: Helper Functions
    
    func navigateToNextCreatePasswordScreen( ) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let createPasswordVC = storyboard.instantiateViewController(withIdentifier: "NewCreatePasswordViewController") as! NewCreatePasswordViewController
        navigationController?.pushViewController(createPasswordVC, animated: true)
    }
    
}
