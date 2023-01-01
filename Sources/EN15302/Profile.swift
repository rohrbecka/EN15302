//
//  Profile.swift
//  
//
//  Created by André Rohrbeck on 30.12.22.
//

import Foundation


public protocol Profile: CustomStringConvertible {

    /// The profile name according to EN 15302:2021.
    var description: String { get }


    var formulas: [ClosedRange<Double>: ProfileFunction] { get }
}



extension Profile {
    public func profile() -> [CGPoint] {
        profile(resolution: 0.5)
    }



    /// Returns the profile as array of x-y-values.
    ///
    /// The lateral distance between neighbouring points returned is guaranteed to be smaller than ``resolution``.
    ///
    /// - Parameter resolution: The maximum allowed lateral distance between two neighbouring points.
    /// - Returns: An array o f``CGPoint``s representing the profile.
    public func profile(resolution: Double, from start: Double? = nil, to end: Double? = nil) -> [CGPoint] {
        var xValues: StrideThrough<Double>
        if let start, let end {
            xValues = stride(from: start, through: end, by: resolution)
        } else {
            xValues = stride(from: minX, through: maxX, by: resolution)
        }
        return xValues.compactMap {
            if let y = yValue(x: $0) {
                return CGPoint(x: $0, y: -y)
            } else {
                return nil
            }
        }
//        formulas.flatMap { profile(zone: $0, resolution: resolution) }.sorted {
//            $0.x < $1.x
//        }
    }




    private var minX: Double {
        formulas.keys.map {$0.lowerBound}.min() ?? 0.0
    }


    private var maxX: Double {
        formulas.keys.map {$0.upperBound}.max() ?? 0.0
    }


    private func yValue(x: Double) -> Double? {
        formulas.first(where: {$0.key.contains(x)})?.value(x)
    }


    private func profile(zone: (ClosedRange<Double>, ProfileFunction), resolution: Double) -> [CGPoint] {
        let dist = zone.0.upperBound - zone.0.lowerBound
        let numberOfIntervals = Int(ceil(dist / resolution))
        return (0..<numberOfIntervals).map { index in
            let y = zone.0.lowerBound + Double(index) * dist / Double(numberOfIntervals)
            return CGPoint(x: y,
                           y: -zone.1(y))
        }
    }
}
