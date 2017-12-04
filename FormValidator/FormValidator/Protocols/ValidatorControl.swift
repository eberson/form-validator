//
//  ValidatorControl.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

public protocol ValidatorControlDelegate: class {
    
    func validatorControlDidChange(_ validatorControl: ValidatorControl)
    func validatorControl(_ validatorControl: ValidatorControl, changedValidState validState: Bool)
    func validatorControl(_ validatorControl: ValidatorControl, violatedConditions conditions: [Condition])
    
}


public protocol ValidatorControl: class, Validatable {
    
    var isValid: Bool { get }
    var shouldAllowViolation: Bool { get set }
    var validateOnFocusLossOnly: Bool { get set }
    weak var validatorDelegate: ValidatorControlDelegate? { get }
    
}


public extension ValidatorControl {
    
    var isValid: Bool {
        return validator.checkConditions(validatableText) == nil
    }
    
}
