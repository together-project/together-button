//
//  MenuViewController.swift
//  together-ios-project
//
//  Created by otavio on 03/07/20.
//  Copyright © 2020 together project. All rights reserved.
//

import UIKit
import ContactsUI

class MenuViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView.layer.cornerRadius = 40.0
        contentView.clipsToBounds = true

        leftButton.layer.cornerRadius = leftButton.frame.size.height * 0.5
        rightButton.layer.cornerRadius = rightButton.frame.size.height * 0.5
    }
    
    
    @IBAction func onCloseButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onLeftButton(_ sender: Any) {
        self.makeAPhoneCall(to: "180")
    }
    
    @IBAction func onRightButton(_ sender: Any) {
        self.present(CNContactPickerViewController(), animated: true, completion: nil)
    }
    
    
    func makeAPhoneCall(to number: String)  {
        let url: NSURL = URL(string: "TEL://180")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
}
