//
//  NewCreatePasswordViewController.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/21/25.
//

import UIKit

class NewCreatePasswordViewController: UIViewController {
    
    var titleLabel: UILabel!
    var subTitleLabel: UILabel!
    var passwordLabel: UILabel!
    var passwordTextField: UITextField!
    var confirmPasswordLabel: UILabel!
    var confirmPasswordTextField: UITextField!
    var resetButton: UIButton!

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
            string: "Create ",
            attributes: [.foregroundColor: UIColor.systemRed]
        )
        text.append(NSAttributedString(
            string: "new password",
            attributes: [.foregroundColor: UIColor.white]
        ))
        titleLabel.attributedText = text
        
        subTitleLabel = UILabel()
        subTitleLabel.text = "Enter your new password. Your new password must be unique from those previously used."
        subTitleLabel.font = .systemFont(ofSize: 14)
        subTitleLabel.numberOfLines = 0
        subTitleLabel.textColor = .white
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false

        
        passwordLabel = UILabel()
        passwordLabel.text = "New Password"
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
        passwordTextField.isSecureTextEntry = true
        passwordTextField.attributedPlaceholder = NSAttributedString(
            string: "Your Password must be 6-20 characters long",
            attributes: [
                .foregroundColor: UIColor.white.withAlphaComponent(0.7),
                .font: UIFont.systemFont(ofSize: 14)
            ]
        )

        confirmPasswordLabel = UILabel()
        confirmPasswordLabel.text = "Confirm Password"
        confirmPasswordLabel.font = .systemFont(ofSize: 14)
        confirmPasswordLabel.textColor = .white
        confirmPasswordLabel.translatesAutoresizingMaskIntoConstraints = false

        
        confirmPasswordTextField = UITextField()
        confirmPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        confirmPasswordTextField.borderStyle = .roundedRect
        confirmPasswordTextField.backgroundColor = UIColor.white.withAlphaComponent(0.14)
        confirmPasswordTextField.layer.cornerRadius = 6
        confirmPasswordTextField.layer.masksToBounds = true
        confirmPasswordTextField.textColor = .white
        confirmPasswordTextField.isSecureTextEntry = true
        confirmPasswordTextField.attributedPlaceholder = NSAttributedString(
            string: "Confirm your password",
            attributes: [
                .foregroundColor: UIColor.white.withAlphaComponent(0.7),
                .font: UIFont.systemFont(ofSize: 14)
            ]
        )
        resetButton = UIButton(type: .system)
        resetButton.setTitle(" Reset Password", for: .normal)
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        resetButton.backgroundColor = .systemRed
        resetButton.setTitleColor(.white, for: .normal)
        resetButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        resetButton.layer.cornerRadius = 6
        resetButton.contentHorizontalAlignment = .center
        resetButton.addTarget(self, action: #selector(resetPasswordAction), for: .touchUpInside)
        
        // Vertical layout
        let vStack = UIStackView(arrangedSubviews: [titleLabel, subTitleLabel, passwordLabel, passwordTextField, confirmPasswordLabel,  confirmPasswordTextField, resetButton])
        vStack.axis = .vertical
        vStack.spacing = 20
        vStack.translatesAutoresizingMaskIntoConstraints = false
        vStack.setCustomSpacing(50, after: subTitleLabel)
        vStack.setCustomSpacing(4, after: passwordLabel)
        vStack.setCustomSpacing(4, after: confirmPasswordLabel)
        vStack.setCustomSpacing(40, after: confirmPasswordTextField)
        view.addSubview(vStack)

        NSLayoutConstraint.activate([
            vStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            vStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            vStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            confirmPasswordTextField.heightAnchor.constraint(equalToConstant: 50),
            resetButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    @objc func resetPasswordAction() {
        navigateToNextPasswordChanged()
    }
    
    //MARK: Helper Functions
    
    func navigateToNextPasswordChanged() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "NewPasswordChangedViewController")
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}
