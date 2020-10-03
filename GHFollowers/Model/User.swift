//
//  User.swift
//  GHFollowers
//
//  Created by Roland on 03/10/2020.
//  Copyright © 2020 Roland. All rights reserved.
//

import Foundation

struct user: Codable {
    var login: String
    var avatarUrl: String
    var name: String
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createdAt: Int
    
}
