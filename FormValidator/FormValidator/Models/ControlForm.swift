//
//  ControlForm.swift
//  FormValidator
//
//  Created by Éberson Oliveira on 01/12/2017.
//  Copyright © 2017 S2IT Mobile. All rights reserved.
//

import Foundation

public struct ControlForm: Form {
    
    public var entries: [FormEntry]
    
    public init() {
        entries = [FormEntry]()
    }
    
}
