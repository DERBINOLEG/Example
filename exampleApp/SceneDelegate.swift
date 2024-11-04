//
//  SceneDelegate.swift
//  exampleApp
//
//  Created by Олег Дербин on 07.09.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        
        let helper = Helper()
        let repo = UserRepository()
        helper.getUsersData(usersData: repo.getData())
        
        let viewController = ViewController()
        viewController.helper = helper
        
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
    }


}

