//
//  WheelProfileType.swift
//  
//
//  Created by André Rohrbeck on 30.12.22.
//

import Foundation


public enum WheelProfileType: CaseIterable {
    case wheelA
    case wheelB
    case wheelC
    case wheelH
    case wheelI


    /// Returns a string, describing the profile to the User.
    public var localizedDescription: String {
        switch self {
        case .wheelA: return "Wheel A"
        case .wheelB: return "Wheel B"
        case .wheelC: return "Wheel C"
        case .wheelH: return "Wheel H"
        case .wheelI: return "Wheel I"
        }
    }
}
