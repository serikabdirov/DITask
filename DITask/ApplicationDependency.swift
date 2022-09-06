//
//  ApplicationDependency.swift
//  DITask
//
//  Created by Серик Абдиров on 06.09.2022.
//

import Foundation
import DITranquillity

class ApplicationDependency: DIFramework {
    static func load(container: DIContainer) {
        container.register(Router.init)
            .as(check: RouterProtocol.self){$0}
            .injection(\.viewModel)
        
        container.register(SecondViewModel.init)
            .as(check: SecondViewModelProtocol.self){$0}
        
        container.register(FirstViewController.init(router:))
            .injection(\.router)
        
        container.register(SecondViewController.init(viewModel:))
            .injection(\.viewModel)
    }
}
