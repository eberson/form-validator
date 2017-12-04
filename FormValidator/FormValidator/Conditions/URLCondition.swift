//
//  URLCondition.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/**
 *  The `URLCondition` checks a string for a valid URL.
 *  - note: The scheme (protocol) is needed for a valid URL. If you want a check for shorthand URLs see `URLShorthandCondition`. Only HTTP and HTTPS schemes are considered valid.
 */
public struct URLCondition: Condition {
    
    
    // MARK: - Properties
    
    public var localizedViolationString = StringLocalization.sharedInstance.localizedString("US2KeyConditionViolationURL", comment: "")
    
    public let regex = "^((https?)://)[a-z0-9-]+(\\.[a-z0-9-]+)+([/?].*)?$"
    
    public var shouldAllowViolation = true
    
    
    // MARK: - Initializers
    
    public init() { }
    
}
