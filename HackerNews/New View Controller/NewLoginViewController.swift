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
    var helpersRow: UIStackView!
    var rememberButton: UIButton!
    var forgotButton: UIButton!
    var loginButton: UIButton!
    var leftLine: UILabel!
    var rightLine: UILabel!
    var orLabel: UILabel!
    var dividerRow: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @objc private func toggleRemember() {
            rememberButton.isSelected.toggle()
        }
    
    @objc private func forgotTapped() {
           navigateToNextForgotPasswordScreen()
        }
    
    //MARK: Helper functions
    func navigateToNextForgotPasswordScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "NewForgotPasswordViewController") as! NewForgotPasswordViewController
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
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
        
        profileImageView = UIImageView()
        profileImageView.image = UIImage(systemName: "person.circle.fill")
        profileImageView.contentMode = .scaleAspectFit
        profileImageView.tintColor = .systemGray
        profileImageView.translatesAutoresizingMaskIntoConstraints = false

        
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
        
        rememberButton = UIButton(type: .custom)
        rememberButton.backgroundColor = .clear
        rememberButton.setTitle(" Remember my login", for: .normal)
        rememberButton.setTitleColor(.white, for: .normal)
        rememberButton.setTitleColor(.white, for: .selected)
        rememberButton.titleLabel?.font = .systemFont(ofSize: 14)
        rememberButton.tintColor = .systemRed
        rememberButton.setImage(UIImage(systemName: "square"), for: .normal)
        rememberButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: .selected)
        rememberButton.contentHorizontalAlignment = .leading
        rememberButton.addTarget(self, action: #selector(toggleRemember), for: .touchUpInside)

        forgotButton = UIButton(type: .system)
        forgotButton.translatesAutoresizingMaskIntoConstraints = false
        forgotButton.setTitle("Forgot Password?", for: .normal)
        forgotButton.setTitleColor(.systemBlue, for: .normal)
        forgotButton.titleLabel?.font = .systemFont(ofSize: 14, weight: .semibold)
        forgotButton.addTarget(self, action: #selector(forgotTapped), for: .touchUpInside)

        let spacer = UIView()
        helpersRow = UIStackView(arrangedSubviews: [rememberButton, spacer, forgotButton])
        helpersRow.axis = .horizontal
        helpersRow.alignment = .center
        helpersRow.spacing = 12
        helpersRow.translatesAutoresizingMaskIntoConstraints = false
        spacer.setContentHuggingPriority(.defaultLow, for: .horizontal)
        spacer.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        forgotButton.setContentHuggingPriority(.required, for: .horizontal)
        
        loginButton = UIButton(type: .system)
        loginButton.setTitle("Log in", for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.backgroundColor = .systemRed
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        loginButton.layer.cornerRadius = 6
        loginButton.contentHorizontalAlignment = .center
        loginButton.titleLabel?.textAlignment = .center
        
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
        orLabel.text = "Or Login with"
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
        let vStack = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel, profileImageView, emailLabel, emailTextField, passwordLabel, passwordTextField, helpersRow,   loginButton, dividerRow, socialRow])
        vStack.axis = .vertical
        vStack.spacing = 20
        vStack.translatesAutoresizingMaskIntoConstraints = false
        vStack.setCustomSpacing(50, after: subtitleLabel)
        vStack.setCustomSpacing(4, after: passwordLabel)
        vStack.setCustomSpacing(4, after: emailLabel)
        vStack.setCustomSpacing(50, after: subtitleLabel)
        vStack.setCustomSpacing(50, after: profileImageView)
        view.addSubview(vStack)

        NSLayoutConstraint.activate([
            vStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            vStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            vStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            profileImageView.widthAnchor
                .constraint(equalToConstant: 350),
            profileImageView.heightAnchor
                .constraint(equalToConstant: 128),
            leftLine.heightAnchor.constraint(equalToConstant: onePixel()),
            rightLine.heightAnchor.constraint(equalToConstant: onePixel()),
            leftLine.widthAnchor.constraint(equalTo: rightLine.widthAnchor)
            
        ])
        
    }

}
