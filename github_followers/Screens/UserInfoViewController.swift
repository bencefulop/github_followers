//
//  UserInfoViewController.swift
//  github_followers
//
//  Created by Bence Fulop on 8/4/22.
//

import UIKit

class UserInfoViewController: UIViewController {

    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
    }

    @objc func dismissVC() {
        dismiss(animated: true)
    }
}
