//
//  SecondViewController.swift
//  LifeCircleVCWithoutStoryboard
//
//  Created by Никита Гвоздиков on 03.03.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    //Инициализация при переходе происходит стразу после метода awakeFromNib
    //Также и иницализация всех outlets
    var stringValueFromFitsrVC: String? {
        didSet {
            print("value was initialization")
        }
    }

    private lazy var closeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Close View Controller", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.addTarget(self, action: #selector(closeButtonPressed), for: .touchUpInside)
        return button
    }()
    
    
    
    //Срабатывает при использовании storyBoard после инициализации view
    override func awakeFromNib() {
    }
    
    
    //Срабатывает после загрузки view
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        view.addSubview(closeButton)
        setupConstraints()
        print("viewDidLoad")
    }
    
    //Срабатывает перед появление view на экране
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    //Срабатывает перед тем как размер View будет изменен под размер экрана
    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews")
    }
    
    //Срабатывает после того как размер View был изменен под размер экрана
    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews")
    }
    
    // Срабатывает после отображения view на экране
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    //Срабатывает перед изменением ориентации устройства
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("viewWillTransition")
    }
    
    // Срабатывает перед закрытием view
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    // Срабатывает после закрытием view
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    //Срабатывает при нехватке памяти
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //сохранение даееых перед закрытием
    }
    
    
}

extension SecondViewController {
    private func setupConstraints() {
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        closeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        NSLayoutConstraint.activate([
            closeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
    
    
    @objc private func closeButtonPressed() {
        dismiss(animated: true)
    }
}
