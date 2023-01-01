//
//  WheelB.swift
//  
//
//  Created by André Rohrbeck on 31.12.22.
//

import Foundation


/// The Wheel type B as described in Appendix I.3 of EN 15302:2021.
internal struct WheelB: WheelProfile {
    public var formulas: [ClosedRange<Double>: ProfileFunction] = [-70.0000...(-62.7647): WheelB.zone1,
                                                                    -62.7647...(-49.6625): WheelB.zone2,
                                                                    -49.6625...(-39.7640): WheelB.zone3,
                                                                    -39.7640...(-38.7879): WheelB.zone4,
                                                                    -38.7879...(-29.3505): WheelB.zone5,
                                                                    -29.3505...(-0.4787): WheelB.zone6,
                                                                    -0.4787...30: WheelB.zone7,
                                                                    30...60: WheelB.zone8,
                                                                    60...65: WheelB.zone9]


    private static var zone1: ProfileFunction = { y in
        9.5193 + sqrt(20.5*20.5 - (y + 49.5) * (y + 49.5))
    }

    private static var zone2: ProfileFunction = { y in
        16.0 + sqrt(12.0*12.0 - (y + 55.0) * (y + 55.0))
    }

    private static var zone3: ProfileFunction = { y in
        8.8349 + sqrt(20.0*20.0 - (y + 58.5583) * (y + 58.5583))
    }

    private static var zone4: ProfileFunction = { y in
        -93.5767 - 2.7475 * y
    }

    private static var zone5: ProfileFunction = { y in
        17.7814 - sqrt(14.0*14.0 - (y+25.6322) * (y+25.6322))
    }

    private static var zone6: ProfileFunction = { y in
        119.9745 - sqrt(120.0 * 120.0 - (y - 2.5204) * (y - 2.5204))
    }

    private static var zone7: ProfileFunction = { y in
        -0.025 * y
    }

    private static var zone8: ProfileFunction = { y in
        0.75 - 0.05 * y
    }

    private static var zone9: ProfileFunction = { y in
        57.75 - y
    }

    var description: String {
        "Wheel B"
    }
}
