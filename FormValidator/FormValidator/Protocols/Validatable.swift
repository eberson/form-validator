//
//  Validatable.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

public protocol Validatable {
    
    var validatableText: String? { get }
    var validator: Validator { get }
    
}
