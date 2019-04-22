//
//  ViewController.swift
//  JiroGenerator
//
//  Created by b1ack on 2019/04/23.
//  Copyright © 2019 b1ack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        label.text = "にんにく入れますか？"
        label.textAlignment = .center
        label.textColor = UIColor.white
        view.addSubview(label)
        view.isUserInteractionEnabled = true
		view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapped)))
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        label.frame = view.bounds
    }

    @objc func tapped(sender: UITapGestureRecognizer) {
        let nextViewController = MainViewController(titleName: "main")
		nextViewController.modalTransitionStyle = .crossDissolve
		present(nextViewController, animated: true, completion: nil)
    }
}

