//
//  WheelH.swift
//  
//
//  Created by André Rohrbeck on 31.12.22.
//

import Foundation


/// The Wheel type H as described in Appendix I.5 of EN 15302:2021.
internal struct WheelH: WheelProfile {
    public var formulas: [ClosedRange<Double>: ProfileFunction] = [-70.0000...(-62.7647): WheelH.zone1,
                                                                    -62.7647...(-49.6625): WheelH.zone2,
                                                                    -49.6625...(-39.7645): WheelH.zone3,
                                                                    -39.7645...(-38.7220): WheelH.zone4,
                                                                    -38.7220...(-28.3119): WheelH.zone5,
                                                                    -28.3119...(-10.2297): WheelH.zone6,
                                                                    -10.2297...30: WheelH.zone7,
                                                                    30...60: WheelH.zone8,
                                                                    60...65: WheelH.zone9]


    private static var zone1: ProfileFunction = { y in
        9.5193 + sqrt(20.5 * 20.5 - (y + 49.5) * (y + 49.5))
    }

    private static var zone2: ProfileFunction = { y in
        16 + sqrt(12.0*12.0 - (y + 55.0) * (y + 55.0))
    }

    private static var zone3: ProfileFunction = { y in
        8.8349 + sqrt(20.0*20.0 - (y + 58.5583) * (y + 58.5583))
    }

    private static var zone4: ProfileFunction = { y in
        -93.5767 - 2.7475 * y
    }

    private static var zone5: ProfileFunction = { y in
        17.6003 - sqrt(14.0*14.0 - (y+25.5663) * (y+25.5663))
    }

    private static var zone6: ProfileFunction = { y in
        -1.7902 - 0.2*y
    }

    private static var zone7: ProfileFunction = { y in
        -0.025*y
    }

    private static var zone8: ProfileFunction = { y in
        1.251 - 0.0667 * y
    }

    private static var zone9: ProfileFunction = { y in
        57.249 - y
    }

    var description: String {
        "Wheel H"
    }
}
