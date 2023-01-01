//
//  WheelATests.swift
//  
//
//  Created by André Rohrbeck on 31.12.22.
//

import Foundation
import EN15302
import XCTest


internal final class WheelATests: XCTestCase {

    /// The profile values (z) for points every 1 mm in lateral direction, starting at -70.
    ///
    /// These are the values from Table I.1 in EN 15302:2021.
    private let expectedProfileZValues = [9.51926,
                                          15.84382,
                                          18.35102,
                                          20.19634,
                                          21.68479,
                                          22.93567,
                                          24.01064,
                                          24.94651,
                                          25.74745, // 62
                                          26.39296, // 61
                                          26.90936,
                                          27.31436,
                                          27.61960,
                                          27.83281,
                                          27.95891,
                                          28.00065,
                                          27.95891,
                                          27.83281,
                                          27.61960,
                                          27.31436,
                                          26.90936,
                                          26.40368,
                                          25.82151,
                                          25.15750,
                                          24.40120,
                                          23.53837,
                                          22.54891,
                                          21.40295,
                                          20.05263,
                                          18.41189,
                                          16.29140,
                                          13.57565,
                                          11.17815,
                                          9.54152,
                                          8.29031,
                                          7.28388,
                                          6.45597,
                                          5.76918,
                                          5.20012,
                                          4.73320,
                                          4.35766,
                                          4.05872, // -29
                                          3.78159, //
                                          3.51596, //
                                          3.26173, //
                                          3.01881, //
                                          2.78711, //
                                          2.56655, //
                                          2.35705, //
                                          2.15853, //
                                          1.97093, //
                                          1.79419, //
                                          1.62824, //
                                          1.47302, //
                                          1.32850, //
                                          1.19461, //
                                          1.07131, //
                                          0.95856, //
                                          0.85633, //
                                          0.76458, // -11
                                          0.68040,
                                          0.59922,
                                          0.52096,
                                          0.44562,
                                          0.37321,
                                          0.30372,
                                          0.23714,
                                          0.17349,
                                          0.11274,
                                          0.05492,
                                          0.00000,
                                          -0.05200,
                                          -0.10110,
                                          -0.14729,
                                          -0.19056,
                                          -0.23094,
                                          -0.26840,
                                          -0.30297,
                                          -0.33463,
                                          -0.36339,
                                          -0.38924,
                                          -0.41220,
                                          -0.43225,
                                          -0.44941,
                                          -0.46366,
                                          -0.47502,
                                          -0.48347,
                                          -0.48903,
                                          -0.49169,
                                          -0.49194,
                                          -0.49194,
                                          -0.49194,
                                          -0.49194,
                                          -0.49194,
                                          -0.49194,
                                          -0.49194,
                                          -0.49194,
                                          -0.49194,
                                          -0.49194,
                                          -0.49194,
                                          -0.49194,
                                          -0.55861,
                                          -0.62527,
                                          -0.69194,
                                          -0.75860,
                                          -0.82527,
                                          -0.89194,
                                          -0.95860,
                                          -1.02527,
                                          -1.09193,
                                          -1.15860,
                                          -1.22527,
                                          -1.29193,
                                          -1.35860,
                                          -1.42526,
                                          -1.49193,
                                          -1.55860,
                                          -1.62526,
                                          -1.69193,
                                          -1.75859,
                                          -1.82526,
                                          -1.89193,
                                          -1.95859,
                                          -2.02526,
                                          -2.09192,
                                          -2.15859,
                                          -2.22526,
                                          -2.29192,
                                          -2.35859,
                                          -2.42525,
                                          -2.49192,
                                          -3.49192,
                                          -4.49192,
                                          -5.49192,
                                          -6.49192,
                                          -7.49192]


    private var expectedProfile: [CGPoint] {
        (0..<(expectedProfileZValues.count)).map {
            CGPoint(x: -70.0 + Double($0),
                    y: -expectedProfileZValues[$0])
        }
    }


    internal func testProfileCorrectness() {
        let profile = EN15302.profile(.wheelA).profile(resolution: 1.0)

        XCTAssertEqual(profile, expectedProfile, accuracy: 0.0001)
        // TODO: should be more accurate as numbers are given with a resolution of 0.00001, should be
        // 0.000005 (5e-6) instead is 1 e-4!
        // 0.000005 (5e-6) instead is 1 e-4!
    }
}



func XCTAssertEqual(_ lhs: [CGPoint],
                    _ rhs: [CGPoint],
                    accuracy: Double,
                    file: StaticString = #file,
                    line: UInt = #line) {

    XCTAssertEqual(lhs.count, rhs.count)
    let count = min(lhs.count, rhs.count)
    for index in 0..<count {
        XCTAssertEqual(lhs[index].x, rhs[index].x, accuracy: accuracy, file: file, line: line)
        XCTAssertEqual(lhs[index].y, rhs[index].y, accuracy: accuracy, file: file, line: line)
    }
}
