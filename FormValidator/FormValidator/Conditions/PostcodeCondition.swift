//
//  PostcodeCondition.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/**
 *  The `PostcodeCondition` checks a string for a post code.
 */
public struct PostcodeCondition: ConfigurableCondition {
    
    
    // MARK: - Properties
    
    public var localizedViolationString = StringLocalization.sharedInstance.localizedString("US2KeyConditionViolationPostcodeUK", comment: "")
    
    public var regex: String {
        return configuration.country.regex
    }
    
    public var shouldAllowViolation = true
    
    public var configuration: PostcodeConfiguration
    
    
    // MARK: - Initializer
    
    public init(configuration: PostcodeConfiguration) {
        self.configuration = configuration
    }
    
}
