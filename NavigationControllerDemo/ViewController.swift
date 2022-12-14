//
//  ViewController.swift
//  NavigationControllerDemo
//
//  Created by Alexandra on 17.08.2022.
//


import UIKit

class ViewController: UIViewController {
    
    let stackView = UIStackView()
    let pushButton = UIButton(type: .system)
    let presentButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
    
    func style() {
        title = "NavBar Demo"

        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        pushButton.translatesAutoresizingMaskIntoConstraints = false
        pushButton.configuration = .filled()
        pushButton.setTitle("Push", for: [])
        pushButton.addTarget(self, action: #selector(pushTapped), for: .primaryActionTriggered)
        
        presentButton.translatesAutoresizingMaskIntoConstraints = false
        presentButton.configuration = .filled()
        presentButton.setTitle("Present", for: [])
        presentButton.addTarget(self, action: #selector(presentTapped), for: .primaryActionTriggered)
    }
    
    func layout() {
        stackView.addArrangedSubview(pushButton)
        stackView.addArrangedSubview(presentButton)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    @objc func pushTapped(sender: UIButton) {
        navigationController?.pushViewController(PushViewController(), animated: true)
    }
    
    @objc func presentTapped(sender: UIButton) {
        navigationController?.present(PresentViewController(), animated: true, completion: nil)
    }
}
