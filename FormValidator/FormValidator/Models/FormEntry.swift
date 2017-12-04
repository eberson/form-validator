//
//  FormEntry.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/**
 *  A single entry within a `Form`.
 */
public struct FormEntry {
    
    
    // MARK: - Properties
    
    /// A `Validatable` that contains text to be validated.
    public let validatable: ValidatorControl
    /// A `Validator` to use to validate text from `validatable`.
    public let validator: Validator
    
    
    // MARK: - Check
    
    /**
     Checks the text from `validatable` using `validator` from `FormEntry` (NOT the `validator` from `validatable`).
     - returns: An array of conditions that were violated. If no conditions were violated then `nil` is returned.
     */
    public func checkConditions() -> [Condition]? {
        return validator.checkConditions(validatable.validatableText)
    }
    
}
