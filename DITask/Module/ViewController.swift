//
//  ViewController.swift
//  DITask
//
//  Created by Серик Абдиров on 06.09.2022.
//

import UIKit

typealias ViewControllerTag = UIViewController

class ViewController: UIViewController {
    
    var label = UILabel()
    
    var viewModel: ViewModelProtocol!
    
    init(viewModel: ViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapHandler))
        view.addGestureRecognizer(tap)
    }
    
    @objc
    func tapHandler() {
        print("...")
    }
    
    func setupViews() {
        view.backgroundColor = .yellow
        
        label.text = viewModel.labelText
        label.frame = CGRect(x: 100, y: 200, width: 200, height: 200)
        view.addSubview(label)
    }
}
