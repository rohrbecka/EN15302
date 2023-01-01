//
//  RailProfileType.swift
//  
//
//  Created by André Rohrbeck on 30.12.22.
//

import Foundation

public enum RailProfileType: CaseIterable {
    case railA

    /// Returns a string, describing the profile to the User.
    public var localizedDescription: String {
        switch self {
        case .railA: return "Rail A"
        }
    }
}
