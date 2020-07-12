//
//  Together.swift
//  together-ios-project
//
//  Created by otavio on 02/07/20.
//  Copyright © 2020 together project. All rights reserved.
//

import Foundation
import UIKit

class Together {
    static let instance: Together = Together()
    
    private let mainVC: UIViewController!
    private let mainSB: UIStoryboard!
    
    private init() {
        self.mainSB = UIStoryboard(name: "Menu", bundle: nil)
        self.mainVC = mainSB.instantiateViewController(withIdentifier: "Menu")
    }
    
    func show(sender: UIViewController) {
        sender.present(self.mainVC, animated: true)
    }
    
}
