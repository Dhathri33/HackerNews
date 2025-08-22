//
//  NewSignUpViewController.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/22/25.
//

import UIKit

class NewSignUpViewController: UIViewController {

    var titleLabel: UILabel!
    var subtitleLabel: UILabel!
    var firstNameLabel: UILabel!
    var firstNameTextField: UITextField!
    var lastNameLabel: UILabel!
    var lastNameTextField: UITextField!
    var emailLabel: UILabel!
    var emailTextField: UITextField!
    var passwordLabel: UILabel!
    var passwordTextField: UITextField!
    var confirmPasswordLabel: UILabel!
    var confirmPasswordTextField: UITextField!
    var termsButton: UIButton!
    var signupButton: UIButton!
    var leftLine: UILabel!
    var rightLine: UILabel!
    var orLabel: UILabel!
    var dividerRow: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @objc private func toggleRemember() {
            termsButton.isSelected.toggle()
        }
    
    //MARK: Helper functions
    
    private func makeSocialButton(image: UIImage?, templated: Bool = false) -> UIButton {
        let b = UIButton(type: .custom)
        b.translatesAutoresizingMaskIntoConstraints = false
        let img = templated ? image?.withRenderingMode(.alwaysTemplate) : image?.withRenderingMode(.alwaysOriginal)
        b.setImage(img, for: .normal)
        b.imageView?.contentMode = .scaleAspectFit
        b.tintColor = .white
        b.backgroundColor = UIColor.white.withAlphaComponent(0.08)
        b.layer.cornerRadius = 10
        NSLayoutConstraint.activate([
            b.widthAnchor.constraint(equalToConstant: 44),
            b.heightAnchor.constraint(equalToConstant: 44)
        ])
        return b
    }
    
    func onePixel() -> CGFloat { 1 / UIScreen.main.scale }
    
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
            string: "Your Account",
            attributes: [.foregroundColor: UIColor.white]
        ))
        titleLabel.attributedText = text
        
        subtitleLabel = UILabel()
        subtitleLabel.text = "Please enter your details to continue."
        subtitleLabel.font = .systemFont(ofSize: 14)
        subtitleLabel.textColor = .white
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        firstNameLabel = UILabel()
        firstNameLabel.text = "First Name"
        firstNameLabel.font = .systemFont(ofSize: 14)
        firstNameLabel.textColor = .white
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false

        firstNameTextField = UITextField()
        firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
        firstNameTextField.borderStyle = .roundedRect
        firstNameTextField.backgroundColor = UIColor.white.withAlphaComponent(0.14)
        firstNameTextField.layer.cornerRadius = 6
        firstNameTextField.layer.masksToBounds = true
        firstNameTextField.textColor = .white
        firstNameTextField.attributedPlaceholder = NSAttributedString(
            string: "Enter your First name",
            attributes: [
                .foregroundColor: UIColor.white.withAlphaComponent(0.7),
                .font: UIFont.systemFont(ofSize: 14)
            ]
        )
        
        lastNameLabel = UILabel()
        lastNameLabel.text = "Last Name"
        lastNameLabel.font = .systemFont(ofSize: 14)
        lastNameLabel.textColor = .white
        lastNameLabel.translatesAutoresizingMaskIntoConstraints = false

        lastNameTextField = UITextField()
        lastNameTextField.translatesAutoresizingMaskIntoConstraints = false
        lastNameTextField.borderStyle = .roundedRect
        lastNameTextField.backgroundColor = UIColor.white.withAlphaComponent(0.14)
        lastNameTextField.layer.cornerRadius = 6
        lastNameTextField.layer.masksToBounds = true
        lastNameTextField.textColor = .white
        lastNameTextField.attributedPlaceholder = NSAttributedString(
            string: "Enter your last name",
            attributes: [
                .foregroundColor: UIColor.white.withAlphaComponent(0.7),
                .font: UIFont.systemFont(ofSize: 14)
            ]
        )
        
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
        confirmPasswordTextField.attributedPlaceholder = NSAttributedString(
            string: "Confirm your Password",
            attributes: [
                .foregroundColor: UIColor.white.withAlphaComponent(0.7),
                .font: UIFont.systemFont(ofSize: 14)
            ]
        )
        
        termsButton = UIButton(type: .custom)
        termsButton.backgroundColor = .clear
        termsButton.setTitle(" I've read and agree with Terms of Service and our \n Privacy Policy", for: .normal)
        termsButton.setTitleColor(.white, for: .normal)
        termsButton.setTitleColor(.white, for: .selected)
        termsButton.titleLabel?.font = .systemFont(ofSize: 14)
        termsButton.tintColor = .systemRed
        termsButton.setImage(UIImage(systemName: "square"), for: .normal)
        termsButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: .selected)
        termsButton.contentHorizontalAlignment = .leading
        termsButton.addTarget(self, action: #selector(toggleRemember), for: .touchUpInside)
        termsButton.titleLabel?.numberOfLines = 0
        termsButton.titleLabel?.lineBreakMode = .byWordWrapping

        
        signupButton = UIButton(type: .system)
        signupButton.setTitle("Sign Up", for: .normal)
        signupButton.translatesAutoresizingMaskIntoConstraints = false
        signupButton.backgroundColor = .systemRed
        signupButton.setTitleColor(.white, for: .normal)
        signupButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        signupButton.layer.cornerRadius = 6
        signupButton.contentHorizontalAlignment = .center
        signupButton.titleLabel?.textAlignment = .center
        
        //  Divider row
        let leftLine  = UIView()
        let rightLine = UIView()
        [leftLine, rightLine].forEach { line in
            line.translatesAutoresizingMaskIntoConstraints = false
            line.backgroundColor = UIColor.white
            line.setContentHuggingPriority(.defaultLow, for: .horizontal)
            line.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        }

        let orLabel = UILabel()
        orLabel.text = "Or Signup with"
        orLabel.textColor = UIColor.white.withAlphaComponent(0.8)
        orLabel.font = .systemFont(ofSize: 13, weight: .medium)
        orLabel.setContentHuggingPriority(.required, for: .horizontal)

        let dividerRow = UIStackView(arrangedSubviews: [leftLine, orLabel, rightLine])
        dividerRow.axis = .horizontal
        dividerRow.alignment = .center
        dividerRow.spacing = 12
        dividerRow.translatesAutoresizingMaskIntoConstraints = false
        
        // ========== NEW: Social row ==========
        let fbBtn     = makeSocialButton(image: UIImage(named: "f.cursive"))
        let googleBtn = makeSocialButton(image: UIImage(named: "g.square.fill"))
        let appleBtn  = makeSocialButton(image: UIImage(systemName: "apple.logo"),
            templated: true)

        let socialRow = UIStackView(arrangedSubviews: [fbBtn, googleBtn, appleBtn])
        socialRow.axis = .horizontal
        socialRow.alignment = .center
        socialRow.distribution = .equalSpacing
        socialRow.spacing = 24
        socialRow.translatesAutoresizingMaskIntoConstraints = false

        
        // Vertical layout
        let vStack = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel, firstNameLabel, firstNameTextField, lastNameLabel, lastNameTextField, emailLabel, emailTextField, passwordLabel, passwordTextField, confirmPasswordLabel, confirmPasswordTextField, termsButton, signupButton, dividerRow, socialRow])
        vStack.axis = .vertical
        vStack.spacing = 20
        vStack.translatesAutoresizingMaskIntoConstraints = false
        vStack.setCustomSpacing(20, after: subtitleLabel)
        vStack.setCustomSpacing(4, after: emailLabel)
        vStack.setCustomSpacing(4, after: firstNameLabel)
        vStack.setCustomSpacing(4, after: lastNameLabel)
        vStack.setCustomSpacing(4, after: emailLabel)
        vStack.setCustomSpacing(4, after: passwordLabel)
        vStack.setCustomSpacing(4, after: confirmPasswordLabel)
        vStack.setCustomSpacing(5, after: emailTextField)
        vStack.setCustomSpacing(5, after: firstNameTextField)
        vStack.setCustomSpacing(5, after: lastNameTextField)
        vStack.setCustomSpacing(5, after: emailTextField)
        vStack.setCustomSpacing(5, after: passwordTextField)
        vStack.setCustomSpacing(5, after: confirmPasswordTextField)
        view.addSubview(vStack)

        NSLayoutConstraint.activate([
            vStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            vStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            vStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            firstNameTextField.heightAnchor.constraint(equalToConstant: 50),
            lastNameTextField.heightAnchor.constraint(equalToConstant: 50),
            confirmPasswordTextField.heightAnchor.constraint(equalToConstant: 50),
            signupButton.heightAnchor.constraint(equalToConstant: 50),
            leftLine.heightAnchor.constraint(equalToConstant: onePixel()),
            rightLine.heightAnchor.constraint(equalToConstant: onePixel()),
            leftLine.widthAnchor.constraint(equalTo: rightLine.widthAnchor)
        ])
        
    }

}
