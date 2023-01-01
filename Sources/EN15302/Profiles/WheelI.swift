//
//  WheelI.swift
//  
//
//  Created by André Rohrbeck on 31.12.22.
//

import Foundation


/// The Wheel type I as described in Appendix I.6 of EN 15302:2021.
internal struct WheelI: WheelProfile {
    public var formulas: [ClosedRange<Double>: ProfileFunction] = [-70.0000...(-62.7647): WheelI.zone1,
                                                                    -62.7647...(-49.6625): WheelI.zone2,
                                                                    -49.6625...(-39.7640): WheelI.zone3,
                                                                    -39.7640...(-39.0486): WheelI.zone4,
                                                                    -39.0486...(-29.9231): WheelI.zone5,
                                                                    -29.9231...5: WheelI.zone6,
                                                                    5...30: WheelI.zone7,
                                                                    30...60: WheelI.zone8,
                                                                    60...65: WheelI.zone9]


    private static var zone1: ProfileFunction = { y in
        9.51929 + sqrt(20.5 * 20.5 - (y + 49.5) * (y + 49.5))
    }

    private static var zone2: ProfileFunction = { y in
        16.00054 + sqrt(12.0*12.0 - (y + 55.0) * (y + 55.0))
    }

    private static var zone3: ProfileFunction = { y in
        8.83545 + sqrt(20.0*20.0 - (y + 58.5583) * (y + 58.5583))
    }

    private static var zone4: ProfileFunction = { y in
        -93.5767 - 2.7475 * y
    }

    private static var zone5: ProfileFunction = { y in
        18.49733 - sqrt(14.0*14.0 - (y+25.8929) * (y+25.8929))
    }

    private static var zone6: ProfileFunction = { y in
        sqrt(14375.0) - sqrt(120.0 * 120.0 - (y-5.0) * (y-5.0))
    }

    private static var zone7: ProfileFunction = { y in
        sqrt(14375.0) - 120
    }

    private static var zone8: ProfileFunction = { y in
        1.89679 - 0.0667 * y
    }

    private static var zone9: ProfileFunction = { y in
        57.89479 - y
    }

    var description: String {
        "Wheel H"
    }
}
