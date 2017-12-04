//
//  AlphanumericValidator.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/**
 *  The `AlphanumericValidator` contains an `AlphanumericCondition`. A valid string only contains letters and/or numbers.
 *  - seealso: `AlphanumericCondition`
 */
public struct AlphanumericValidator: ConfigurableValidator {
    
    
    // MARK: - Properties
    
    public var conditions: [Condition]
    
    
    // MARK: - Initializers
    
    public init(configuration: AlphanumericConfiguration) {
        conditions = [AlphanumericCondition(configuration: configuration)]
    }
    
}
