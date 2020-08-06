//
//  HelpViewController.swift
//  together-button-develop
//
//  Created by otavio on 06/08/20.
//  Copyright © 2020 together. All rights reserved.
//

import Foundation
import UIKit

public class Together {
    public static let instance: Together = Together()
    
    private let mainVC: MenuViewController!
    private let mainSB: UIStoryboard!
    
    private init() {
        self.mainSB = UIStoryboard(name: "Flow", bundle: Bundle(for: Together.self))
        self.mainVC = mainSB.instantiateViewController(withIdentifier: "Menu") as? MenuViewController
    }
    
    public func show(sender: UIViewController) {
        sender.present(self.mainVC, animated: true)
    }
    
}
