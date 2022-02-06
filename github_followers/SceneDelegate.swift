//
//  SceneDelegate.swift
//  github_followers
//
//  Created by Bence Fulop on 6/2/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let searchNavigationController = createNavigationController(with: SearchViewController(),
                                                                    title: "Search",
                                                                    tabbarImage: .search,
                                                                    tag: 0)
        let favouritesNavigationController = createNavigationController(with: FavouritesListViewController(),
                                                                        title: "Favourites",
                                                                        tabbarImage: .favorites,
                                                                        tag: 1)
        let tabbar = createTabbar(with: [searchNavigationController, favouritesNavigationController])

        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = tabbar
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }
}

extension SceneDelegate {
    private func createNavigationController(with viewController: UIViewController, title: String, tabbarImage: UITabBarItem.SystemItem, tag: Int) -> UINavigationController {
        let viewController = viewController
        viewController.title = title
        viewController.tabBarItem = UITabBarItem(tabBarSystemItem: tabbarImage, tag: tag)
        return UINavigationController(rootViewController: viewController)
    }

    private func createTabbar(with viewcontrollers: [UIViewController]) -> UITabBarController {
        let tabbar = UITabBarController()
        UITabBar.appearance().tintColor = .systemGreen
        tabbar.viewControllers = viewcontrollers
        return tabbar
    }
}
