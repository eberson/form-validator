//
//  Validator.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

public protocol Validator {
    
    /// Initializer that creates a condition based on default values.
    init()
    
    /// Conditions to use when validating text.
    var conditions: [Condition] { get set }
    
    /**
     Checks `text` for violation of each condition.
     - parameter text: `String` to check.
     - returns: An array of conditions that were violated by `text`. If no conditions were violated then `nil` is returned.
     */
    func checkConditions(_ text: String?) -> [Condition]?
    
    /**
     Removes all conditions of `conditionClass` type.
     - parameter conditionClass: `Type` of condition to remove.
     */
    mutating func removeConditionOfClass<T: Condition>(_ conditionClass: T.Type)
    
}

// Default implementation for `addCondition`, `checkConditions`, and `removeConditionOfClass`.
public extension Validator {
    
    func checkConditions(_ text: String?) -> [Condition]? {
        let violations = conditions.filter { !($0.check(text)) }
        
        return violations.isEmpty ? nil : violations
    }
    
    mutating func removeConditionOfClass<T: Condition>(_ conditionClass: T.Type) {
        conditions = conditions.filter { !($0 is T) }
    }
}
