//
//  PhoneNumber.swift
//  together-button-develop
//
//  Created by otavio on 06/08/20.
//  Copyright © 2020 together. All rights reserved.
//

import Foundation
import UIKit

public class PhoneNumber {
    public let display: String
    public let raw: String
    
    public init(display: String, raw: String) {
        self.display = display
        self.raw = raw
    }
    
    public func call() {
        let url: NSURL = URL(string: "TEL://" + self.raw)! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    public static func makeAPhoneCall(to number: String)  {
        let url: NSURL = URL(string: "TEL://" + number)! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
}
