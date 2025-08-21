//
//  NewLoginViewController.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/21/25.
//

import UIKit

class NewLoginViewController: UIViewController {
    
    var titleLabel: UILabel!
    var subtitleLabel: UILabel!
    var profileImageView: UIImageView!
    var emailLabel: UILabel!
    var emailTextField: UITextField!
    var passwordLabel: UILabel!
    var passwordTextField: UITextField!
    var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        view.backgroundColor = .black
        
        titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = .systemFont(ofSize: 30, weight: .bold)

        let text = NSMutableAttributedString(
            string: "Log in ",
            attributes: [.foregroundColor: UIColor.systemRed]
        )
        text.append(NSAttributedString(
            string: "To Your Account",
            attributes: [.foregroundColor: UIColor.white]
        ))
        titleLabel.attributedText = text
        
        subtitleLabel = UILabel()
        subtitleLabel.text = "We're glad to see you again. Log in to continue."
        subtitleLabel.font = .systemFont(ofSize: 14)
        subtitleLabel.numberOfLines = 0
        subtitleLabel.textColor = .white
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false

        
        emailLabel = UILabel()
        emailLabel.text = "Email"
        emailLabel.font = .systemFont(ofSize: 14)
        emailLabel.textColor = .white
        emailLabel.translatesAutoresizingMaskIntoConstraints = false

        
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

        passwordLabel = UILabel()
        passwordLabel.text = "Password"
        passwordLabel.font = .systemFont(ofSize: 14)
        passwordLabel.textColor = .white
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false

        
        passwordTextField = UITextField()
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.backgroundColor = UIColor.white.withAlphaComponent(0.14)
        passwordTextField.layer.cornerRadius = 6
        passwordTextField.layer.masksToBounds = true
        passwordTextField.textColor = .white
        passwordTextField.attributedPlaceholder = NSAttributedString(
            string: "Enter your password",
            attributes: [
                .foregroundColor: UIColor.white.withAlphaComponent(0.7),
                .font: UIFont.systemFont(ofSize: 14)
            ]
        )
        loginButton = UIButton(type: .system)
        loginButton.setTitle("Log in", for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.backgroundColor = .systemRed
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        loginButton.layer.cornerRadius = 6
        loginButton.contentHorizontalAlignment = .center
        loginButton.titleLabel?.textAlignment = .center
        
        // Vertical layout
        let vStack = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel, emailLabel, emailTextField, passwordLabel, passwordTextField,    loginButton])
        vStack.axis = .vertical
        vStack.spacing = 20
        vStack.translatesAutoresizingMaskIntoConstraints = false
        vStack.setCustomSpacing(50, after: subtitleLabel)
        vStack.setCustomSpacing(4, after: passwordLabel)
        vStack.setCustomSpacing(4, after: emailLabel)
        view.addSubview(vStack)

        NSLayoutConstraint.activate([
            vStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            vStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            vStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    

}
