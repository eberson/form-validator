//
//  RangeValidator.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/**
 *  The `RangeValidator` contains an `RangeCondition`. A valid string meets the required string length.
 *  - seealso: `RangeCondition`
 */
public struct RangeValidator: ConfigurableValidator {
    
    
    // MARK: - Properties
    
    public var conditions: [Condition]
    
    
    // MARK: - Initializers
    
    public init(configuration: RangeConfiguration) {
        conditions = [RangeCondition(configuration: configuration)]
    }
    
}
