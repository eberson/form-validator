//
//  NumericCondition.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/**
 *  The `NumericCondition` checks a string for numbers.
 */
public struct NumericCondition: ConfigurableCondition {
    
    
    // MARK: - Properties
    
    public var localizedViolationString = StringLocalization.sharedInstance.localizedString("US2KeyConditionViolationNumeric", comment: "")
    
    public let regex: String
    
    public var shouldAllowViolation = true
    
    public let configuration: NumericConfiguration
    
    
    // MARK: - Initializers
    
    public init(configuration: NumericConfiguration) {
        self.configuration = configuration
        
        let regexNumbers = configuration.allowsUnicode ? "\\p{Nd}" : "0-9"
        let regexWhiteSpace = configuration.allowsWhitespace ? "\\s" : ""
        
        regex = "[\(regexNumbers)\(regexWhiteSpace)]"
    }
    
    
    // MARK: - Check
    
    public func check(_ text: String?) -> Bool {
        guard let sourceText = text,
            !sourceText.isEmpty,
            let regExpression = try? NSRegularExpression(pattern: regex, options: .caseInsensitive) else {
                
                return false
        }
        
        return regExpression.numberOfMatches(in: sourceText, options: [], range: NSRange(location: 0, length: sourceText.count)) == sourceText.count
    }
    
}
