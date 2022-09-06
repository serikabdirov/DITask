//
//  ViewModelProtocol.swift
//  DITask
//
//  Created by Серик Абдиров on 06.09.2022.
//

import Foundation
import UIKit

protocol SecondViewModelProtocol {
    var backgroundColor: String? { get set }
    func getColor() -> UIColor
}

protocol RouterProtocol {
    func route(
        to routeID: String,
        from context: UIViewController
    )
}

protocol RouterDataProtocol {
    
}
