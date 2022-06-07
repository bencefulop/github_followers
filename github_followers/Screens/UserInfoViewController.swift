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

        NetworkManager.shared.getUserInfo(for: username) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let user):
                print("🎉 \(user)")
            case .failure(let error):
                print("error \(error)")
            }
        }
    }

    @objc func dismissVC() {
        dismiss(animated: true)
    }
}
