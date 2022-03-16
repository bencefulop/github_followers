//
//  User.swift
//  github_followers
//
//  Created by Bence Fulop on 16/3/22.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlURL: String
    var following: Int
    var followers: Int
    var createdAt: String
}
