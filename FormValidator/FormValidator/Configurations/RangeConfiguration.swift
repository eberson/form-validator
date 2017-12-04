//
//  RangeConfiguration.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/// Stores configuration for `RangeCondition`.
public struct RangeConfiguration: Configuration {
    
    
    // MARK: - Properties
    
    public let range: CountableRange<Int>
    
    
    // MARK: - Initializers
    
    /// Initializes a `RangeConfiguration` with a `0..<1` range.
    public init() {
        self.init(range: 0..<1)
    }
    
    public init(range: CountableRange<Int>) {
        self.range = range
    }
    
}
