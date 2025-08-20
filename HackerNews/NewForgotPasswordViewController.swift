//
//  NewForgotPasswordViewController.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/20/25.
//

import UIKit

class NewForgotPasswordViewController: UIViewController {
    
    var emailTextField: UITextField!
    var sendCodeButton: UIButton!
    var titleLabel: UILabel!
    var titleLabel2: UILabel!
    var subTitleLabel: UILabel!
    var emailLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .black

        // Title labels
        titleLabel = UILabel()
        titleLabel.text = "Forgot"
        titleLabel.font = .systemFont(ofSize: 30, weight: .bold)
        titleLabel.textColor = .systemRed
        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        titleLabel2 = UILabel()
        titleLabel2.text = "Your Password?"
        titleLabel2.font = .systemFont(ofSize: 30, weight: .bold)
        titleLabel2.textColor = .white
        titleLabel2.translatesAutoresizingMaskIntoConstraints = false

        // Subtitle
        subTitleLabel = UILabel()
        subTitleLabel.text = "No problem! Enter your email address below, and we'll send you a code to reset your password."
        subTitleLabel.font = .systemFont(ofSize: 14)
        subTitleLabel.numberOfLines = 0
        subTitleLabel.textColor = .white
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false

        // Email label
        emailLabel = UILabel()
        emailLabel.text = "Email"
        emailLabel.font = .systemFont(ofSize: 14)
        emailLabel.textColor = .white
        emailLabel.translatesAutoresizingMaskIntoConstraints = false

        // Email field
        emailTextField = UITextField()
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.borderStyle = .roundedRect
        emailTextField.backgroundColor = UIColor.white.withAlphaComponent(0.14)
        emailTextField.layer.cornerRadius = 6
        emailTextField.layer.masksToBounds = true
        emailTextField.textColor = .white
        emailTextField.attributedPlaceholder = NSAttributedString(
            string: "Enter your email",
            attributes: [
                .foregroundColor: UIColor.white.withAlphaComponent(0.7),
                .font: UIFont.systemFont(ofSize: 14)
            ]
        )

        // Button
        sendCodeButton = UIButton(type: .system)
        sendCodeButton.setTitle("  Send Code", for: .normal)
        sendCodeButton.translatesAutoresizingMaskIntoConstraints = false
        sendCodeButton.backgroundColor = .systemRed
        sendCodeButton.setTitleColor(.white, for: .normal)
        sendCodeButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        sendCodeButton.layer.cornerRadius = 6
        sendCodeButton.contentHorizontalAlignment = .leading

        // Title: side-by-side
        let titleStack = UIStackView(arrangedSubviews: [titleLabel, titleLabel2])
        titleStack.axis = .horizontal
        titleStack.alignment = .firstBaseline
        titleStack.spacing = 0.1
        titleStack.translatesAutoresizingMaskIntoConstraints = false

        // Vertical layout
        let vStack = UIStackView(arrangedSubviews: [titleStack, subTitleLabel, emailLabel, emailTextField, sendCodeButton])
        vStack.axis = .vertical
        vStack.spacing = 20
        vStack.setCustomSpacing(50, after: subTitleLabel)
        vStack.setCustomSpacing(4, after: emailLabel)
        vStack.setCustomSpacing(40, after: emailTextField)
        vStack.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(vStack)

        NSLayoutConstraint.activate([
            vStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            vStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            vStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),

            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            sendCodeButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    

}
