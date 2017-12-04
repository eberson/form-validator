//
//  PresentValidator.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/**
 *  The `PresentValidator` contains an `PresentCondition`. A valid string is a non-empty string.
 *  - seealso: `PresentCondition`
 */
public struct PresentValidator: Validator {
    
    
    // MARK: - Properties
    
    public var conditions: [Condition]
    
    
    // MARK: - Initializers
    
    public init() {
        conditions = [PresentCondition()]
    }
    
}
