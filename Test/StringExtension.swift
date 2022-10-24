//
//  StringExtension.swift
//  Test
//
//  Created by Yuwen Chiu on 2022/10/22.
//

import Foundation

extension Optional where Wrapped == String {
    
    var isNilOrEmpty: Bool {
        return self == "" || self == nil
    }
}

extension String {
    
}
