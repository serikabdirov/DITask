//
//  SecondViewController.swift
//  DITask
//
//  Created by Серик Абдиров on 06.09.2022.
//

import UIKit
import DITranquillity

class SecondViewController: UIViewController {
    
    var viewModel: SecondViewModelProtocol!
    
    init(viewModel: SecondViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = viewModel.getColor()
        
}

}
