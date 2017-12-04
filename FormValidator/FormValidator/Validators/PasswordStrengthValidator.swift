//
//  PasswordStrengthValidator.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/**
 *  The `PasswordStrengthValidator` contains an `PasswordStrengthCondition`. A valid string meets the required strength level.
 *  - seealso: `PasswordStrengthCondition`
 */
public struct PasswordStrengthValidator: ConfigurableValidator {
    
    
    // MARK: - Properties
    
    public var conditions: [Condition]
    
    
    // MARK: - Initializers
    
    public init(configuration: PasswordStrengthConfiguration) {
        conditions = [PasswordStrengthCondition(configuration: configuration)]
    }
    
}
