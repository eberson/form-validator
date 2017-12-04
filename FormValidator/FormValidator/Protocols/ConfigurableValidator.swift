//
//  ConfigurableValidator.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/// A special type of `Validator` that allows configuration.
public protocol ConfigurableValidator: Validator {
    
    associatedtype ConfigurationType: Configuration
    
    /// Initializes a new `ConfigurableValidator` with a given configuration.
    ///
    /// - Parameter configuration: The configuration to use.
    init(configuration: ConfigurationType)
    
}


// Default implemenation of `Condition:init()`. Initializes with the default configuration.
extension ConfigurableValidator {
    
    public init() {
        self.init(configuration: ConfigurationType())
    }
    
}
