//
//  EmailValidator.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/**
 *  The `EmailValidator` contains an `EmailCondition`. A valid string is an email address.
 *  - seealso: `EmailCondition`
 */
public struct EmailValidator: Validator {
    
    
    // MARK: - Properties
    
    public var conditions: [Condition]
    
    
    // MARK: - Initializers
    
    public init() {
        conditions = [EmailCondition()]
    }
    
}
