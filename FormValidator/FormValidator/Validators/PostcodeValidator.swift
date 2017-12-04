//
//  PostcodeValidator.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/**
 *  The `PostcodeValidator` contains an `PostcodeCondition`. A valid string is a postcode.
 *  - seealso: `PostcodeCondition`
 */
public struct PostcodeValidator: ConfigurableValidator {
    
    
    // MARK: - Properties
    
    public var conditions: [Condition]
    
    
    // MARK: - Initializers
    
    public init(configuration: PostcodeConfiguration) {
        conditions = [PostcodeCondition(configuration: configuration)]
    }
    
}
