//
//  WheelC.swift
//  
//
//  Created by André Rohrbeck on 31.12.22.
//

import Foundation

/// The Wheel type C as described in Appendix I.4 of EN 15302:2021.
///
/// - Note: The formula for the last zone (59 to 65 mm) was changed as it was apparently faulty in the standard.
internal struct WheelC: WheelProfile {
    public var formulas: [ClosedRange<Double>: ProfileFunction] = [-70.0000...(-69.4027): WheelC.zone1,
                                                                    -69.4027...(-59.5000): WheelC.zone2,
                                                                    -59.5000...(-43.8048): WheelC.zone3,
                                                                    -43.8048...(-41.0534): WheelC.zone4,
                                                                    -41.0534...(-32.3621): WheelC.zone5,
                                                                    -32.3621...(-17.5870): WheelC.zone6,
                                                                    -17.5870...19: WheelC.zone7,
                                                                    19...29: WheelC.zone8,
                                                                    29...59: WheelC.zone9,
                                                                    59...65: WheelC.zone10]


    private static var zone1: ProfileFunction = { y in
        21.39173 + (7.11537 * (y + 69.40268) )
    }

    private static var zone2: ProfileFunction = { y in
        20.00006 + sqrt(10.0*10.0 - (y + 59.5) * (y + 59.5))
    }

    private static var zone3: ProfileFunction = { y in
        12.02753 + sqrt(18.0*18.0 - (y + 60.4941) * (y + 60.4941))
    }

    private static var zone4: ProfileFunction = { y in
        11.96051 - 2.47508685 * (y + 41.05339)
    }

    private static var zone5: ProfileFunction = { y in
        16.830365 - sqrt(13.0*13.0 - (y+29.0) * (y+29.0))
    }

    private static var zone6: ProfileFunction = { y in
        100.870534 - sqrt(100.0 * 100.0 - (y + 6.5) * (y + 6.5))
    }

    private static var zone7: ProfileFunction = { y in
        329.45258 - sqrt(330.0 * 330.0 - (y - 19.0) * (y - 19.0))
    }

    private static var zone8: ProfileFunction = { y in
        -0.54742374
    }

    private static var zone9: ProfileFunction = { y in
        -0.54742374 - (y - 29.0) / 10.0
    }

    private static var zone10: ProfileFunction = { y in
        -3.54742374 - (y - 59.0)
    }

    var description: String {
        "Wheel C"
    }
}
