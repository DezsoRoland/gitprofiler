//
//  SearchVC.swift
//  GHFollowers
//
//  Created by Roland on 21/09/2020.
//  Copyright © 2020 Roland. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {
    let logoImageView = UIImageView()
    let usernameTextfield = GFTextField()
    let callToActionButton = GFButton(backgroundColor: .systemGreen, title: "Get Followers")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureLogoImgeView()
        configureTextField()
        configureButton()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    func configureLogoImgeView() {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "gh-logo")!
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalTo: logoImageView.heightAnchor)
        ])
    }
    
    func configureTextField() {
        view.addSubview(usernameTextfield)
        
        NSLayoutConstraint.activate([
            usernameTextfield.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 48),
            usernameTextfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 52),
            usernameTextfield.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -52),
            usernameTextfield.heightAnchor.constraint(equalToConstant: 52)
        ])
    }
    
    func configureButton() {
        view.addSubview(callToActionButton)
        
        NSLayoutConstraint.activate([
            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -52),
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 52),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -52),
            callToActionButton.heightAnchor.constraint(equalToConstant: 52)
        ])
    }

}
