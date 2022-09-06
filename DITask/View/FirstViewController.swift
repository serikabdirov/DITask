//
//  ViewController.swift
//  DITask
//
//  Created by Серик Абдиров on 06.09.2022.
//

import UIKit
import DITranquillity

class FirstViewController: UIViewController {
    
    enum Route: String {
        case red
        case green
    }
    
    var router: RouterProtocol!
    var buttonRed = UIButton()
    var buttonGreen = UIButton()
    
    init(router: RouterProtocol) {
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setup() {
        buttonRed.frame = CGRect(x: 30, y: 30, width: 40, height: 40)
        buttonGreen.frame = CGRect(x: 30, y: 80, width: 40, height: 40)
        
        buttonRed.layer.borderWidth = 2
        buttonGreen.layer.borderWidth = 2
        
        buttonRed.setTitle("Red", for: .normal)
        buttonGreen.setTitle("Green", for: .normal)
        
        buttonRed.setTitleColor(.black, for: .normal)
        buttonGreen.setTitleColor(.black, for: .normal)
        
        buttonRed.addTarget(self, action: #selector(redButtonTapped), for: .touchUpInside)
        buttonGreen.addTarget(self, action: #selector(greenButtonTapped), for: .touchUpInside)
        
        view.addSubview(buttonRed)
        view.addSubview(buttonGreen)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        setup()
    }
    
    @objc func redButtonTapped() {
        router.route(to: Route.red.rawValue, from: self)
    }
    
    @objc func greenButtonTapped() {
        router.route(to: Route.green.rawValue, from: self)
    }

}

