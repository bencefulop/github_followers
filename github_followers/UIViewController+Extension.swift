//
//  UIViewController+Extension.swift
//  github_followers
//
//  Created by Bence Fulop on 16/3/22.
//

import UIKit

extension UIViewController {

    func presentGFAlertOnMainThread(alertTitle: String, alertMessage: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertViewController(alertTitle: alertTitle, alertMessage: alertMessage, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
