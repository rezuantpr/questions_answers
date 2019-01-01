//
//  ViewController.swift
//  TellSell
//
//  Created by  Rezuan on 31/12/2018.
//  Copyright © 2018  Rezuan. All rights reserved.
//

import UIKit

class StartVC: UIViewController {

    
    let bg = GDGradient()
    
    let startButton = GDButton(title: "Начать игру", radius: 20)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        view.addSubview(bg)
        bg.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        bg.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        bg.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        view.addSubview(startButton)
        startButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        startButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        startButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        startButton.addTarget(self, action: #selector(start), for: .touchUpInside)
        

    }
    
    @objc func start() {
        let gameVC = GameVC()
        present(gameVC, animated: true, completion: nil)
    }


}

