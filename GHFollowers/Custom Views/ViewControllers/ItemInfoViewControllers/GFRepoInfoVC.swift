//
//  GFRepoInfoVC.swift
//  GHFollowers
//
//  Created by Roland on 13/10/2020.
//  Copyright © 2020 Roland. All rights reserved.
//

import UIKit

class GFRepoInfoVC: GFItemInfoVC {
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
}
