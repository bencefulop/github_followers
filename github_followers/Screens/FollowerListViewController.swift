//
//  FollowerListViewController.swift
//  github_followers
//
//  Created by Bence Fulop on 9/3/22.
//

import UIKit

class FollowerListViewController: UIViewController {

    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        NetworkManager.shared.getFollowers(for: username, page: 1) { followers, errorMessage in

            guard let followers = followers else {
                self.presentGFAlertOnMainThread(alertTitle: "Bad stuff happened", alertMessage: errorMessage!, buttonTitle: "OK")
                return
            }
            print(followers.count)
            print(followers)
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
