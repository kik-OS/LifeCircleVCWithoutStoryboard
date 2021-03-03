//
//  ViewController.swift
//  LifeCircleVCWithoutStoryboard
//
//  Created by Никита Гвоздиков on 03.03.2021.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    private lazy var openVCButton: UIButton = {
        let button = UIButton()
        button.setTitle("Open View Controller", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.addTarget(self, action: #selector(openButtonPressed), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        setupSubViews()
        setupConstraints()
    }
    
    
    private func setupSubViews() {
        view.addSubview(openVCButton)
    }
    
    private func setupConstraints() {
        
        openVCButton.translatesAutoresizingMaskIntoConstraints = false
        openVCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        openVCButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        NSLayoutConstraint.activate([
            openVCButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            openVCButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
    @objc private func openButtonPressed() {
        let secondVC = SecondViewController()
        secondVC.modalPresentationStyle = .fullScreen
        secondVC.stringValueFromFitsrVC = " "
        present(secondVC, animated: true, completion: nil)
    }
}
