//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Roland on 03/10/2020.
//  Copyright © 2020 Roland. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again!"
    case unableToComplete = "Unable to complete your request. Please check your connection!"
    case invalidResponse = "Invalid response from the server. Please try again!"
    case invalidData = "The data from the server recieved is invalid. Please try again!"
}
