//
//  ViewModel.swift
//  DITask
//
//  Created by Серик Абдиров on 06.09.2022.
//

import Foundation

class ViewModel: ViewModelProtocol {
    var labelText: String = "Hello"
    
    var router: RouterProtocol
    
    init(router: RouterProtocol) {
        self.router = router
    }
}
