//
//  MainViewController.swift
//  JiroGenerator
//
//  Created by b1ack on 2019/04/23.
//  Copyright © 2019 b1ack. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
	
	let titleName: String
	
	init(titleName: String) {
		self.titleName = titleName
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
    
    override func viewDidLoad() {
        super.viewDidLoad()
		navigationItem.title = titleName
        view.backgroundColor = UIColor.black
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
}

