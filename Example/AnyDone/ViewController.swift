//
//  ViewController.swift
//  AnyDone
//
//  Created by subashparajuli007 on 01/06/2021.
//  Copyright (c) 2021 subashparajuli007. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var button: UIButton = {
       let button = UIButton()
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.setTitle("Tap Me", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func buttonAction() {
        print("button is tapped")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

