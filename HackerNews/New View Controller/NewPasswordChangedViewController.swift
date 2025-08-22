//
//  NewPasswordChangedViewController.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/21/25.
//

import UIKit

class NewPasswordChangedViewController: UIViewController {
    
    var verifyImageView: UIImageView!
    var titleLabel: UILabel!
    var subtitleLabel: UILabel!
    var backToLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        view.backgroundColor = .black
        
        verifyImageView = UIImageView(image: UIImage(named: "image 1"))
        verifyImageView.translatesAutoresizingMaskIntoConstraints = false
        verifyImageView.contentMode = .scaleAspectFit
        verifyImageView.clipsToBounds = true
        
        titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = .systemFont(ofSize: 30, weight: .bold)
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        titleLabel.text = "Password Changed!"
        
        subtitleLabel = UILabel()
        subtitleLabel.text = "Your password has been changed\n successfully."
        subtitleLabel.numberOfLines = 0
        subtitleLabel.font = .systemFont(ofSize: 14)
        subtitleLabel.textColor = .white
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.textAlignment = .center

        
        backToLoginButton = UIButton(type: .system)
        backToLoginButton.setTitle(" Back to Login", for: .normal)
        backToLoginButton.translatesAutoresizingMaskIntoConstraints = false
        backToLoginButton.backgroundColor = .systemRed
        backToLoginButton.setTitleColor(.white, for: .normal)
        backToLoginButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        backToLoginButton.layer.cornerRadius = 6
        backToLoginButton.contentHorizontalAlignment = .center
        backToLoginButton.addTarget(self, action: #selector(backToLoginAction), for: .touchUpInside)
        
        // Vertical layout
        let vStack = UIStackView(arrangedSubviews: [verifyImageView, titleLabel, subtitleLabel,  backToLoginButton])
        vStack.axis = .vertical
        vStack.spacing = 20
        vStack.translatesAutoresizingMaskIntoConstraints = false
        vStack.setCustomSpacing(50, after: subtitleLabel)
        view.addSubview(vStack)

        NSLayoutConstraint.activate([
            vStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            vStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            vStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            backToLoginButton.heightAnchor.constraint(equalToConstant: 50),
            verifyImageView.heightAnchor.constraint(equalToConstant: 128),
            verifyImageView.widthAnchor.constraint(equalToConstant: 240)
        ])
    }
    
    // MARK: Helper Functions
    
    @objc func backToLoginAction() {
        navigateToNextLoginScreen()
    }

    func navigateToNextLoginScreen() {
        let loginViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NewLoginViewController") as! NewLoginViewController
        self.navigationController?.pushViewController(loginViewController, animated: true)
    }
}
