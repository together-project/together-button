//
//  Service.swift
//  together-button-develop
//
//  Created by otavio on 06/08/20.
//  Copyright © 2020 together. All rights reserved.
//

import Foundation

public class Service {
    private static var nextId: Int = 0
    
    public var id: Int
    public var name: String
    public var address: String
    public var number: PhoneNumber
    
    public init(name: String, address: String, number: PhoneNumber) {
        self.id = Self.nextId
        Self.nextId += 1
        
        self.name = name
        self.address = address
        self.number = number
    }
    
}
