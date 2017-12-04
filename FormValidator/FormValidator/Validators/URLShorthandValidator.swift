//
//  URLShorthandValidator.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/**
 *  The `URLShorthandValidator` contains an `URLShorthandCondition`. A valid string is a URL, with or without scheme.
 *  - seealso: `URLShorthandCondition`
 */
public struct URLShorthandValidator: Validator {
    
    
    // MARK: - Properties
    
    public var conditions: [Condition]
    
    
    // MARK: - Initializers
    
    public init() {
        conditions = [URLShorthandCondition()]
    }
    
}
