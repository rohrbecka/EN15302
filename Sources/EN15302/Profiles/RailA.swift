//
//  RailA.swift
//  
//
//  Created by André Rohrbeck on 31.12.22.
//

import Foundation


/// The Rail type A as described in Appendix I.7 of EN 15302:2021.
internal struct RailA: RailProfile {
    public var formulas: [ClosedRange<Double>: ProfileFunction] = [-32.6340...(-23.2401): RailA.zone1,
                                                                    -23.2401...(-7.87490): RailA.zone2,
                                                                    -7.87490...(13.09890): RailA.zone3,
                                                                    13.09890...(28.67090): RailA.zone4,
                                                                    28.67090...(39.27050): RailA.zone5]

    private static var zone1: ProfileFunction = { y in
        15.899044 - sqrt(13.0*13.0 - (y+19.63949) * (y+19.63949))
    }

    private static var zone2: ProfileFunction = { y in
        80.277908 - sqrt(80.0*80.0 - (y+1.08250) * (y+1.08250))
    }

    private static var zone3: ProfileFunction = { y in
        299.483490 - sqrt(300.0*300.0 - (y - 17.59660) * (y - 17.59660))
    }

    private static var zone4: ProfileFunction = { y in
        79.508225 - sqrt(80.0*80.0 - (y-14.29829) * (y-14.29829))
    }

    private static var zone5: ProfileFunction = { y in
        13.598369 - sqrt(13.0*13.0 - (y-26.33535) * (y-26.33535))
    }

    var description: String {
        "Rail A"
    }
}
