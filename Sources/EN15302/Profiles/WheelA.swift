//
//  WheelA.swift
//  
//
//  Created by André Rohrbeck on 30.12.22.
//

import Foundation


/// The Wheel type A as described in Appendix I.2 of EN 15302:2021.

internal struct WheelA: WheelProfile {
    public var formulas: [ClosedRange<Double>: ProfileFunction] = [-70.0000...(-62.7647): WheelA.zone1,
                                                                    -62.7647...(-49.6625): WheelA.zone2,
                                                                    -49.6625...(-39.7645): WheelA.zone3,
                                                                    -39.7645...(-38.7372): WheelA.zone4,
                                                                    -38.7372...(-29.4591): WheelA.zone5,
                                                                    -29.4591...(-10.8749): WheelA.zone6,
                                                                    -10.8749...18.4173: WheelA.zone7,
                                                                    18.4173...30: WheelA.zone8,
                                                                    30...60: WheelA.zone9,
                                                                    60...65: WheelA.zone10]


    private static var zone1: ProfileFunction = { y in
        9.51926 + sqrt(20.5*20.5 - (y + 49.5) * (y + 49.5))
    }

    private static var zone2: ProfileFunction = { y in
        16.00065 + sqrt(12.0*12.0 - (y + 55.0) * (y + 55.0))
    }

    private static var zone3: ProfileFunction = { y in
        8.83556 + sqrt(20.0*20.0 - (y + 58.5583) * (y + 58.5583))
    }

    private static var zone4: ProfileFunction = { y in
        -93.57685 - 2.7475 * y
    }

    private static var zone5: ProfileFunction = { y in
        17.64215 - sqrt(14.0*14.0 - (y+25.5816) * (y+25.5816))
    }

    private static var zone6: ProfileFunction = { y in
        97.16493 - sqrt(96.76055 * 96.76055 - (y + 2.6594) * (y + 2.6594))
    }

    private static var zone7: ProfileFunction = { y in
        344.50806 - sqrt(345.0 * 345.0 - (y - 18.4173) * (y - 18.4173))
    }

    private static var zone8: ProfileFunction = { y in
        -0.49194
    }

    private static var zone9: ProfileFunction = { y in
        1.50804 - 0.066666 * y
    }

    private static var zone10: ProfileFunction = { y in
        57.50808 - y
    }

    var description: String {
        "Wheel A"
    }
}


public typealias ProfileFunction = (Double) -> Double
