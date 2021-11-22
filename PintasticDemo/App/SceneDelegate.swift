//
//  SceneDelegate.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let deps = Dependencies(
            demoDataSource: DefaultDemoDataSource(),
            viewDecoratorFactory: DefaultViewDecoratorFactory()
        )

        window = UIWindow(windowScene: windowScene)

        let nav = UINavigationController(rootViewController: deps.makeMenuViewController())

        window?.rootViewController = nav
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

