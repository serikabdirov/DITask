//
//  Router.swift
//  DITask
//
//  Created by Серик Абдиров on 06.09.2022.
//

import Foundation
import UIKit

class Router: RouterProtocol {
    
    var viewModel: SecondViewModelProtocol!
    
    init(viewModel: SecondViewModelProtocol) {
        self.viewModel = viewModel
    }
    
    func route(to routeID: String, from context: UIViewController) {
        let vc = SecondViewController()
        vc.viewModel = viewModel
        viewModel.backgroundColor = routeID
        context.present(vc, animated: true)
        print(routeID)
    }
}
