//
//  URLValidator.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/**
 *  The `URLValidator` contains an `URLCondition`. A valid string is a full URL with scheme.
 *  - seealso: `URLCondition`
 */
public struct URLValidator: Validator {
    
    
    // MARK: - Properties
    
    public var conditions: [Condition]
    
    
    // MARK: - Initializers
    
    public init() {
        conditions = [URLCondition()]
    }
    
}
