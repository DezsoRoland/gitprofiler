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
    var logoImageViewTopConstraint: NSLayoutConstraint!
    
    var isUsernameEntered: Bool {
        
        return !usernameTextfield.text!.isEmpty
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureLogoImgeView()
        configureTextField()
        configureButton()
        dismissKeyboardTapGesture()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        usernameTextfield.text = ""
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func dismissKeyboardTapGesture() {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    
    func configureLogoImgeView() {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = Images.ghLogo
        
        let topConstraintConstant: CGFloat = DeviceTypes.isiphoneSE || DeviceTypes.isiphone8Zoomed ? 20 : 80
        
        logoImageViewTopConstraint = logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: topConstraintConstant)
        
        logoImageViewTopConstraint.isActive = true
        
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalTo: logoImageView.heightAnchor)
        ])
    }
    
    @objc func pushFollowerListVC() {
        
        guard isUsernameEntered else {
            presentGFAlertOnMainThread(title: "Empty Username", message: "Please enter a username. We dont know who to look for 🤓", buttonTitle: "Ok")
            return
        }
        
        usernameTextfield.resignFirstResponder()
        
        let followerListVC = FollowerListVC(username: usernameTextfield.text!)
        
        
        navigationController?.pushViewController(followerListVC, animated: true)
    }
    
    func configureTextField() {
        view.addSubview(usernameTextfield)
        usernameTextfield.delegate = self
        
        NSLayoutConstraint.activate([
            usernameTextfield.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 48),
            usernameTextfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 52),
            usernameTextfield.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -52),
            usernameTextfield.heightAnchor.constraint(equalToConstant: 52)
        ])
    }
    
    func configureButton() {
        view.addSubview(callToActionButton)
        callToActionButton.addTarget(self, action: #selector(pushFollowerListVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -52),
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 52),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -52),
            callToActionButton.heightAnchor.constraint(equalToConstant: 52)
        ])
    }

}

extension SearchVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("did tap return")
        return true
    }
}
