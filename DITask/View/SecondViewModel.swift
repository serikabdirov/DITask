//
//  ViewModel.swift
//  DITask
//
//  Created by Серик Абдиров on 06.09.2022.
//

import Foundation
import UIKit

class SecondViewModel: SecondViewModelProtocol {
    var backgroundColor: String?
    
    func getColor() -> UIColor {
        if backgroundColor == "red" {
            return .red
        }
        
        if backgroundColor == "green" {
            return .green
        }
        return .clear
    }
    
}
