//
//  AlphabeticConfiguration.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/// Stores configuration for `AlphabeticCondition`.
public struct AlphabeticConfiguration: Configuration {
    
    
    // MARK: - Properties
    
    /// Whether or not to allow Unicode letters. If `false` then only ASCII letters (A-Z, a-z) are allowed.
    public let allowsUnicode: Bool
    /// Whether or not to allow whitespace.
    public let allowsWhitespace: Bool
    
    
    // MARK: - Initializers
    
    public init() {
        self.init(allowsUnicode: true, allowsWhitespace: false)
    }
    
    public init(allowsUnicode: Bool = true, allowsWhitespace: Bool = false) {
        self.allowsWhitespace = allowsWhitespace
        self.allowsUnicode = allowsUnicode
    }
    
}
