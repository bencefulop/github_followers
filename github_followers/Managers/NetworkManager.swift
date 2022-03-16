//
//  NetworkManager.swift
//  github_followers
//
//  Created by Bence Fulop on 16/3/22.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com/users/"
    private init() {}

    func getFollowers(for username: String, page: Int, completion: @escaping ([Follower]?, String?) -> Void) {
        let endpoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"
        guard let url = URL(string: endpoint) else {
            completion(nil, "This username created an invalid request, please try again")
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completion(nil, "Unable to complete your request, please check your internet connection")
                return
            }

            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(nil, "invalid response from the server please try again")
                return
            }

            guard let data = data else {
                completion(nil, "the data received from the server was invalid please try again")
                return
            }

            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completion(followers, nil)
            } catch {
                completion(nil, "the data received from the server was invalid please try again")
            }

        }

        task.resume()
    }
}
