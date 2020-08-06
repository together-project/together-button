//
//  HelpViewController.swift
//  together-button-develop
//
//  Created by otavio on 06/08/20.
//  Copyright © 2020 together. All rights reserved.
//

import UIKit

public class HelpViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var call154Button: UIButton!
    @IBOutlet weak var call180Button: UIButton!
    
    @IBOutlet weak var servicesButton: UIButton!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
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
        call154Button.clipsToBounds = true
        call154Button.layer.cornerRadius = call154Button.frame.size.height * 0.35
        call180Button.clipsToBounds = true
        call180Button.layer.cornerRadius = call180Button.frame.size.height * 0.35
        servicesButton.clipsToBounds = true
        servicesButton.layer.cornerRadius = servicesButton.frame.size.height * 0.35
        
    }
    
    @IBAction func onCall153Button(_ sender: Any) {
        PhoneNumber.makeAPhoneCall(to: "153")
    }
    
    @IBAction func onCall180Button(_ sender: Any) {
        PhoneNumber.makeAPhoneCall(to: "180")
    }
    
    @IBAction func onServicesButton(_ sender: Any) {
        self.performSegue(withIdentifier: "SegueServices", sender: nil)
    }
    
    @IBAction func onBackButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
