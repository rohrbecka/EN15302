//
//  RailATests.swift
//  
//
//  Created by André Rohrbeck on 31.12.22.
//

import Foundation
import EN15302
import XCTest


internal final class RailATests: XCTestCase {

    /// The profile values (z) for points every 1 mm in lateral direction, starting at -70.
    ///
    /// These are the values from Table I.6 in EN 15302:2021.
    /// Only the first value is not included here as it doesn't fit the 1-mm-grid.
    private let expectedProfileZValues = [11.87191,
                                          9.57933,
                                          8.04667,
                                          6.87791,
                                          5.94405,
                                          5.18350,
                                          4.56132,
                                          4.05569,
                                          3.65217,
                                          3.33882,
                                          3.06095,
                                          2.79699,
                                          2.54678,
                                          2.31020,
                                          2.08713,
                                          1.87744,
                                          1.68104,
                                          1.49781,
                                          1.32768,
                                          1.17056,
                                          1.02636,
                                          0.89502,
                                          0.77647,
                                          0.67066,
                                          0.57754,
                                          0.49351,
                                          0.41293,
                                          0.33571,
                                          0.26185,
                                          0.19136,
                                          0.12422,
                                          0.06043,
                                          0.00000,
                                          -0.05708,
                                          -0.11081,
                                          -0.16120,
                                          -0.20824,
                                          -0.25194,
                                          -0.29229,
                                          -0.32931,
                                          -0.36298,
                                          -0.39332,
                                          -0.42031,
                                          -0.44398,
                                          -0.46430,
                                          -0.48129,
                                          -0.49122,
                                          -0.48870,
                                          -0.47367,
                                          -0.44614,
                                          -0.40609,
                                          -0.35349,
                                          -0.28833,
                                          -0.21058,
                                          -0.12018,
                                          -0.01712,
                                          0.09867,
                                          0.22725,
                                          0.36866,
                                          0.52299,
                                          0.69031,
                                          0.87439,
                                          1.12559,
                                          1.46408,
                                          1.89744,
                                          2.43672,
                                          3.09822,
                                          3.90694,
                                          4.90386,
                                          6.16431,
                                          7.85938,
                                          10.66466]


    private var expectedProfile: [CGPoint] {
        (0..<(expectedProfileZValues.count)).map {
            CGPoint(x: -32 + Double($0),
                    y: -expectedProfileZValues[$0])
        }
    }


    internal func testProfileCorrectness() {
        let profile = EN15302.profile(.railA).profile(resolution: 1.0, from: -32.0, to: 39.0)

        XCTAssertEqual(profile, expectedProfile, accuracy: 0.000005)
    }
}
