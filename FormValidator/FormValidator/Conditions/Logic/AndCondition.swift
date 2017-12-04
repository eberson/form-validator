//
//  AndCondition.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/**
 *  A condition that returns the result of either operands.
 */
public struct AndCondition: Condition {
    
    
    // MARK: - Properties
    
    public var localizedViolationString = ""
    
    public let regex = ""
    
    public var shouldAllowViolation = true
    
    public let conditions: [Condition]
    
    
    // MARK: - Initializers
    
    public init() {
        self.init(conditions: [AlphanumericCondition()])
    }
    
    public init(conditions: [Condition]) {
        self.conditions = conditions
    }
    
    
    // MARK: - Check
    
    public func check(_ text: String?) -> Bool {
        return conditions.reduce(true, { $0 && $1.check(text) })
    }
    
}
