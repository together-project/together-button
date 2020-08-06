//
//  MenuViewController.swift
//  together-button-develop
//
//  Created by otavio on 06/08/20.
//  Copyright © 2020 together. All rights reserved.
//

import UIKit
import ContactsUI

public class MenuViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLayout()
    }
    
    private func setupLayout() {
        self.setupContentViewLayout()
        self.setupActionButtonsLayout()
    }
    
    private func setupContentViewLayout() {
        contentView.clipsToBounds = true
        contentView.layer.cornerRadius = 35
        contentView.layer.maskedCorners = [
            .layerMaxXMinYCorner,
            .layerMinXMinYCorner,
        ]
    }
    
    private func setupActionButtonsLayout() {
        leftButton.clipsToBounds = true
        leftButton.layer.cornerRadius = leftButton.frame.size.height * 0.35
        rightButton.clipsToBounds = true
        rightButton.layer.cornerRadius = rightButton.frame.size.height * 0.35
    }
    
    
    @IBAction func onCloseButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onLeftButton(_ sender: Any) {
        self.performSegue(withIdentifier: "SegueHelp", sender: nil)
    }
    
    @IBAction func onRightButton(_ sender: Any) {
        self.present(CNContactPickerViewController(), animated: true, completion: nil)
    }
    
}
