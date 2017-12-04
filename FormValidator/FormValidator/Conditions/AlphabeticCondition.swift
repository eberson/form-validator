//
//  AlphabeticCondition.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/**
 *  The `AlphabeticCondition` checks a string for occurrences of letters.
 */
public struct AlphabeticCondition: ConfigurableCondition {
    
    
    // MARK: - Properties
    
    public var localizedViolationString = StringLocalization.sharedInstance.localizedString("US2KeyConditionViolationAlphabetic", comment: "")
    
    public let regex: String
    
    public var shouldAllowViolation = true
    
    public let configuration: AlphabeticConfiguration
    
    
    // MARK: - Initializers
    
    public init(configuration: AlphabeticConfiguration) {
        self.configuration = configuration
        
        let regexLetters = configuration.allowsUnicode ? "\\p{L}" : "a-zA-Z"
        let regexWhiteSpace = configuration.allowsWhitespace ? "\\s" : ""
        
        regex = "[\(regexLetters)\(regexWhiteSpace)]"
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
