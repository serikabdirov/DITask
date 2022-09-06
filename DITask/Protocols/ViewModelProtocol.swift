//
//  ViewModelProtocol.swift
//  DITask
//
//  Created by Серик Абдиров on 06.09.2022.
//

import Foundation

protocol ViewModelProtocol {
    var router: RouterProtocol { get }
    var labelText: String { get }
}
