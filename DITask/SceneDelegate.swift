//
//  SceneDelegate.swift
//  DITask
//
//  Created by Серик Абдиров on 06.09.2022.
//

import UIKit
import DITranquillity

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        
//        let router = Router()
//        let viewModel = ViewModel(router: router)
//        let controller = ViewController(viewModel: viewModel)
//        router.viewController = controller
        
        let container = DIContainer()
        test(container: container)
//        container.append(framework: ApplicationDependency.self)
        
        let controller: ViewController = container.resolve()
        
//        print(ApplicationDependency.container.makeGraph())
        
        window.rootViewController = controller
        window.makeKeyAndVisible()
        self.window = window
    }

    func test(container: DIContainer) {
        container.register(ViewController.init)
            .as(ViewControllerTag.self)
//            .lifetime(.objectGraph)
        
        container.register(Router.init)
            .as(RouterProtocol.self)
            .injection(cycle: true, \.viewController)
        
        container.register(ViewModel.init)
            .as(ViewModelProtocol.self)
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

