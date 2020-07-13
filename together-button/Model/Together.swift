//
//  Together.swift
//  together-ios-project
//
//  Created by otavio on 02/07/20.
//  Copyright © 2020 together project. All rights reserved.
//

import Foundation
import UIKit

public class Together {
    public static let instance: Together = Together()
    
    private let mainVC: UIViewController!
    private let mainSB: UIStoryboard!
    
    private init() {
        self.mainSB = UIStoryboard(name: "Menu", bundle: Bundle(identifier: "together-button"))
        self.mainVC = mainSB.instantiateViewController(withIdentifier: "Menu")
    }
    
    public func show(sender: UIViewController) {
        sender.present(self.mainVC, animated: true)
    }
    
}
