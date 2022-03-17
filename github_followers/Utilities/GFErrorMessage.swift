//
//  ErrorMessage.swift
//  github_followers
//
//  Created by Bence Fulop on 17/3/22.
//

import Foundation

enum GFErrorMessage: String, Error {
    case invalidRequest = "This username created an invalid request, please try again"
    case noInternetConnection = "Unable to complete your request, please check your internet connection"
    case invalidResponse = "Invalid response from the server please try again"
    case invalidData = "The data received from the server was invalid please try again"
}
