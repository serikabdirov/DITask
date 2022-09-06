//
//  ApplicationDependency.swift
//  DITask
//
//  Created by Серик Абдиров on 06.09.2022.
//

import Foundation
import DITranquillity

class ApplicationDependency: DIFramework {
    static let container: DIContainer = {
        let container = DIContainer()
//        container.append(framework: ApplicationDependency.self)
        return container
    }()
    
    static func load(container: DIContainer) {
        container.register(ViewController.init(viewModel:))
            .as(ViewController.self)
            .lifetime(.objectGraph)
        
        container.register(Router.init)
            .as(RouterProtocol.self)
            .injection(\.viewController)
        
        container.register(ViewModel.init)
            .as(ViewModelProtocol.self)
        
        
    }
}
