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
        navigationController?.isNavigationBarHidden = false
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
