//
//  StringLocalization.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

/**
 *  Convenience handler for localizating built in conditions.
 */
internal struct StringLocalization {
    
    
    static let sharedInstance = StringLocalization()
    
    
    private let resourceBundle: Bundle
    
    init() {
        let frameworkBundle = Bundle(for: DummyClass.self)
        
        if let bundleURL = frameworkBundle.resourceURL?.appendingPathComponent("FormValidator.bundle"),
            let resourceBundle = Bundle(url: bundleURL) {
            
            // Installed using CocoaPods
            self.resourceBundle = resourceBundle
            
        } else {
            self.resourceBundle = frameworkBundle
        }
    }
    
    
    /**
     Localizes a string based on the `Localizeable.strings` file within the framework.
     - parameter key:     Lookup value for the strings table.
     - parameter comment: Comment value for the strings table.
     - returns: Localized string.
     */
    func localizedString(_ key: String, comment: String) -> String {
        
        return NSLocalizedString(key, tableName: "Localizable", bundle: resourceBundle, comment: comment)
    }
    
}


// Use `DummyClass` to be able to get the right `NSBundle`. This is currently not possible with a `struct` in Swift 2.1.
private class DummyClass: NSObject { }
