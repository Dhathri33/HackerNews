//
//  NewWelcomeViewController.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/22/25.
//

import UIKit

class NewWelcomeViewController: UIViewController {
    
    var titleLabel: UILabel!
    var subtitleLabel: UILabel!
    var userImageView: UIImageView!
    var loginButton: UIButton!
    var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @objc func loginAction() {
        navigateToNextLoginScreen()
    }
    
    @objc func signupAction() {
        navigateToNextSignupScreen()
    }

    func navigateToNextLoginScreen() {
        let loginViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NewLoginViewController") as! NewLoginViewController
        self.navigationController?.pushViewController(loginViewController, animated: true)
    }
    
    func navigateToNextSignupScreen() {
        let signupViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NewSignUpViewController") as! NewSignUpViewController
        self.navigationController?.pushViewController(signupViewController, animated: true)
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
    
    func setupUI() {
        view.backgroundColor = .black
        
        titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = .systemFont(ofSize: 30, weight: .bold)

        let text = NSMutableAttributedString(
            string: "Welcome ",
            attributes: [.foregroundColor: UIColor.systemRed]
        )
        text.append(NSAttributedString(
            string: "back!",
            attributes: [.foregroundColor: UIColor.white]
        ))
        titleLabel.attributedText = text
        
        subtitleLabel = UILabel()
        subtitleLabel.text = "Your journey starts here.\nPlease sign up or login to continue."
        subtitleLabel.font = .systemFont(ofSize: 14)
        subtitleLabel.numberOfLines = 0
        subtitleLabel.textColor = .white
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        userImageView = UIImageView(image: UIImage(named: "image"))
        userImageView.translatesAutoresizingMaskIntoConstraints = false
        userImageView.contentMode = .scaleAspectFit
        userImageView.clipsToBounds = true
        
        loginButton = UIButton(type: .system)
        loginButton.setTitle("Log in", for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.backgroundColor = .systemRed
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        loginButton.layer.cornerRadius = 6
        loginButton.contentHorizontalAlignment = .center
        loginButton.titleLabel?.textAlignment = .center
        loginButton.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        
        signupButton = UIButton(type: .system)
        signupButton.setTitle("Sign Up", for: .normal)
        signupButton.translatesAutoresizingMaskIntoConstraints = false
        signupButton.backgroundColor = .systemRed
        signupButton.setTitleColor(.white, for: .normal)
        signupButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        signupButton.layer.cornerRadius = 6
        signupButton.contentHorizontalAlignment = .center
        signupButton.titleLabel?.textAlignment = .center
        signupButton.addTarget(self, action: #selector(signupAction), for: .touchUpInside)
        
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
        let vStack = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel, userImageView, signupButton, loginButton, dividerRow, socialRow])
        vStack.axis = .vertical
        vStack.spacing = 20
        vStack.translatesAutoresizingMaskIntoConstraints = false
        vStack.setCustomSpacing(50, after: subtitleLabel)
        //vStack.setCustomSpacing(50, after: subtitleLabel)
        vStack.setCustomSpacing(50, after: userImageView)
        view.addSubview(vStack)

        NSLayoutConstraint.activate([
            vStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            vStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            vStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            signupButton.heightAnchor.constraint(equalToConstant: 50),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            userImageView.widthAnchor
                .constraint(equalToConstant: 350),
            userImageView.heightAnchor
                .constraint(equalToConstant: 300),
            leftLine.heightAnchor.constraint(equalToConstant: onePixel()),
            rightLine.heightAnchor.constraint(equalToConstant: onePixel()),
            leftLine.widthAnchor.constraint(equalTo: rightLine.widthAnchor)
            
        ])
    }
}
