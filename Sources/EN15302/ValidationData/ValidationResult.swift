//
//  ValidationResult.swift
//  
//
//  Created by André Rohrbeck on 07.01.23.
//

import Foundation

/// A common protocol for the validation data as given in EN 15302:2021 appendices J and K.
protocol ValidationResult {
    /// Returns the ∆r-function.
    ///
    /// The keys in the `Dictionary` are the lateral shift of the wheelset
    /// in respect to the rails in mm. The values are the radius differences in mm.
    static var deltaR: [Double: Double] { get }

    /// Returns the equivalent conicity in relation to the maximum amplitude.
    ///
    /// The keys of the `Dictionary` are the maximum amplitudes in mm. The values are
    /// tuples giving:
    ///  - The ideal conicity value,
    ///  - The tolerance window,
    ///  - The extended tolerance window.
    static var conicity: [Double: (Double, ClosedRange<Double>, ClosedRange<Double>)] { get }
}
