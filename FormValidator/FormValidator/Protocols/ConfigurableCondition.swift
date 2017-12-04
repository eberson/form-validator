//
//  ConfigurableCondition.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/// A special type of `Condition` that allows configuration.
public protocol ConfigurableCondition: Condition {
    
    associatedtype ConfigurationType: Configuration
    
    /// Configuration for the `Condition`.
    var configuration: ConfigurationType { get }
    
    /// Initializes a new `ConfigurableCondition` with a given configuration.
    ///
    /// - Parameter configuration: The configuration to use.
    init(configuration: ConfigurationType)
    
}


// Default implemenation of `Condition:init()`. Initializes with the default configuration.
extension ConfigurableCondition {
    
    public init() {
        self.init(configuration: ConfigurationType())
    }
    
}
