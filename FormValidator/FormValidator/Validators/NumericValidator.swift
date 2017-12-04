//
//  NumericValidator.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/**
 *  The `NumericValidator` contains an `NumericCondition`. A valid string only contains numbers.
 *  - seealso: `NumericCondition`
 */
public struct NumericValidator: ConfigurableValidator {
    
    
    // MARK: - Properties
    
    public var conditions: [Condition]
    
    
    // MARK: - Initializers
    
    public init(configuration: NumericConfiguration) {
        conditions = [NumericCondition(configuration: configuration)]
    }
    
}
