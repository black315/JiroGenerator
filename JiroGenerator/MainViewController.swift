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
	
	let toppings = ["刻み生にんにく", "キャベツともやし", "豚の背脂", "醤油タレ"]
	var ninnniku = false
	var yasai = false
	var abura = false
	var karame = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
		navigationItem.title = titleName
        view.backgroundColor = UIColor.black
		
		var i = 0
		for topping in toppings {
			let button = UIButton(type: UIButton.ButtonType.system)
			button.addTarget(self, action: #selector(selected), for: UIControl.Event.touchUpInside)
			button.setTitle(topping, for: UIControl.State.normal)
			button.sizeToFit()
			button.center = view.center
			button.setTitleColor(UIColor.white, for: UIControl.State.normal)
			button.backgroundColor = UIColor.black
			button.layer.position = CGPoint(x: 190, y: i * 100 + 200)
			view.addSubview(button)
			i += 1
		}
		
		let generateCallButton = UIButton(type: UIButton.ButtonType.system)
		generateCallButton.addTarget(self, action: #selector(generateCall), for: UIControl.Event.touchUpInside)
		generateCallButton.setTitle("呪文を生成する", for: UIControl.State.normal)
		generateCallButton.sizeToFit()
		generateCallButton.center = view.center
		generateCallButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
		generateCallButton.backgroundColor = UIColor.black
		generateCallButton.layer.cornerRadius = 15
		generateCallButton.layer.position = CGPoint(x: 190, y: 650)
		view.addSubview(generateCallButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
	
	@objc func selected(_ sender: UIButton) {
		switch sender.currentTitle {
		case toppings[0]:
			ninnniku = !ninnniku
			break
		case toppings[1]:
			yasai = !yasai
			break
		case toppings[2]:
			abura = !abura
			break
		case toppings[3]:
			karame = !karame
			break
		default: break
		}
		
		if (sender.currentTitleColor == UIColor.white) {
			sender.setTitleColor(UIColor.green, for: UIControl.State.normal)
		} else {
			sender.setTitleColor(UIColor.white, for: UIControl.State.normal)
		}

	}
	
	@objc func generateCall(_ sender: UIButton) {
		let alert = UIAlertController(title: createCall(), message: nil, preferredStyle: UIAlertController.Style.alert)
		let cancelAction:UIAlertAction = UIAlertAction(title: "頼み直す", style: UIAlertAction.Style.cancel)
		alert.addAction(cancelAction)
		present(alert, animated: true, completion: nil)
	}
	
	func createCall() -> String {
		var call = ""
		
		if (ninnniku) {
			call += "ニンニク"
		}
		if (yasai) {
			call += "ヤサイ"
		}
		if (abura) {
			call += "アブラ"
		}
		if (karame) {
			call += "カラメ"
		}
		
		return call
	}
    
}

