//
//  WheelHRailA.swift
//  
//
//  Created by André Rohrbeck on 05.01.23.
//

import Foundation

/// The results for the combination of wheel H with rail A according to EN 15302:2021
/// appendices J.5 and K.5.
public enum WheelHRailA: ValidationResult {

    public static var deltaR = [-6.8: -11.199,
                                 -6.7: -3.324,
                                 -6.6: -3.302,
                                 -6.5: -3.279,
                                 -6.4: -3.257,
                                 -6.3: -3.234,
                                 -6.2: -3.212,
                                 -6.1: -3.189,
                                 -6.0: -3.167,
                                 -5.9: -3.144,
                                 -5.8: -3.122,
                                 -5.7: -3.099,
                                 -5.6: -3.077,
                                 -5.5: -3.054,
                                 -5.4: -3.032,
                                 -5.3: -3.009,
                                 -5.2: -2.987,
                                 -5.1: -2.964,
                                 -5.0: -2.942,
                                 -4.9: -2.919,
                                 -4.8: -2.897,
                                 -4.7: -2.874,
                                 -4.6: -2.852,
                                 -4.5: -2.829,
                                 -4.4: -2.807,
                                 -4.3: -2.784,
                                 -4.2: -2.762,
                                 -4.1: -2.739,
                                 -4.0: -2.717,
                                 -3.9: -2.694,
                                 -3.8: -2.672,
                                 -3.7: -2.649,
                                 -3.6: -2.627,
                                 -3.5: -2.604,
                                 -3.4: -2.582,
                                 -3.3: -2.559,
                                 -3.2: -2.537,
                                 -3.1: -1.514,
                                 -3.0: -2.492,
                                 -2.9: -2.469,
                                 -2.8: -2.447,
                                 -2.7: -2.424,
                                 -2.6: -2.402,
                                 -2.5: -0.125,
                                 -2.4: -0.120,
                                 -2.3: -0.115,
                                 -2.2: -0.110,
                                 -2.1: -0.105,
                                 -2.0: -0.100,
                                 -1.9: -0.095,
                                 -1.8: -0.090,
                                 -1.7: -0.085,
                                 -1.6: -0.080,
                                 -1.5: -0.075,
                                 -1.4: -0.070,
                                 -1.3: -0.065,
                                 -1.2: -0.060,
                                 -1.1: -0.055,
                                 -1.0: -0.050,
                                 -0.9: -0.045,
                                 -0.8: -0.040,
                                 -0.7: -0.035,
                                 -0.6: -0.030,
                                 -0.5: -0.025,
                                 -0.4: -0.020,
                                 -0.3: -0.015,
                                 -0.2: -0.010,
                                 -0.1: -0.005,
                                 0.0: 0.0,
                                 6.8: 11.199,
                                 6.7: 3.324,
                                 6.6: 3.302,
                                 6.5: 3.279,
                                 6.4: 3.257,
                                 6.3: 3.234,
                                 6.2: 3.212,
                                 6.1: 3.189,
                                 6.0: 3.167,
                                 5.9: 3.144,
                                 5.8: 3.122,
                                 5.7: 3.099,
                                 5.6: 3.077,
                                 5.5: 3.054,
                                 5.4: 3.032,
                                 5.3: 3.009,
                                 5.2: 2.987,
                                 5.1: 2.964,
                                 5.0: 2.942,
                                 4.9: 2.919,
                                 4.8: 2.897,
                                 4.7: 2.874,
                                 4.6: 2.852,
                                 4.5: 2.829,
                                 4.4: 2.807,
                                 4.3: 2.784,
                                 4.2: 2.762,
                                 4.1: 2.739,
                                 4.0: 2.717,
                                 3.9: 2.694,
                                 3.8: 2.672,
                                 3.7: 2.649,
                                 3.6: 2.627,
                                 3.5: 2.604,
                                 3.4: 2.582,
                                 3.3: 2.559,
                                 3.2: 2.537,
                                 3.1: 1.514,
                                 3.0: 2.492,
                                 2.9: 2.469,
                                 2.8: 2.447,
                                 2.7: 2.424,
                                 2.6: 2.402,
                                 2.5: 0.125,
                                 2.4: 0.120,
                                 2.3: 0.115,
                                 2.2: 0.110,
                                 2.1: 0.105,
                                 2.0: 0.100,
                                 1.9: 0.095,
                                 1.8: 0.090,
                                 1.7: 0.085,
                                 1.6: 0.080,
                                 1.5: 0.075,
                                 1.4: 0.070,
                                 1.3: 0.065,
                                 1.2: 0.060,
                                 1.1: 0.055,
                                 1.0: 0.050,
                                 0.9: 0.045,
                                 0.8: 0.040,
                                 0.7: 0.035,
                                 0.6: 0.030,
                                 0.5: 0.025,
                                 0.4: 0.020,
                                 0.3: 0.015,
                                 0.2: 0.010,
                                 0.1: 0.005]


    public static var conicity = [1.0: (0.025, 0.012...0.037, 0.012...0.037),
                                  1.2: (0.025, 0.012...0.037, 0.012...0.037),
                                  1.4: (0.025, 0.012...0.037, 0.012...0.037),
                                  1.6: (0.025, 0.012...0.037, 0.012...0.037),
                                  1.8: (0.025, 0.012...0.037, 0.012...0.037),
                                  2.0: (0.025, 0.012...0.037, 0.012...0.037),
                                  2.2: (0.025, 0.012...0.037, 0.012...0.037),
                                  2.4: (0.025, 0.012...0.037, 0.012...0.134),
                                  2.6: (0.110, 0.060...0.160, 0.023...0.236),
                                  2.8: (0.206, 0.156...0.256, 0.079...0.294),
                                  3.0: (0.260, 0.210...0.310, 0.169...0.327),
                                  3.2: (0.291, 0.241...0.341, 0.224...0.348),
                                  3.4: (0.309, 0.259...0.359, 0.253...0.361),
                                  3.6: (0.318, 0.268...0.368, 0.267...0.368),
                                  3.8: (0.322, 0.272...0.372, 0.272...0.372),
                                  4.0: (0.323, 0.273...0.373, 0.273...0.373),
                                  4.2: (0.321, 0.271...0.371, 0.271...0.371),
                                  4.4: (0.319, 0.269...0.369, 0.269...0.369),
                                  4.6: (0.315, 0.265...0.365, 0.265...0.365),
                                  4.8: (0.311, 0.261...0.361, 0.261...0.361),
                                  5.0: (0.307, 0.257...0.357, 0.256...0.357),
                                  5.2: (0.302, 0.252...0.352, 0.252...0.352),
                                  5.4: (0.297, 0.247...0.347, 0.247...0.348),
                                  5.6: (0.293, 0.243...0.343, 0.243...0.343),
                                  5.8: (0.288, 0.238...0.338, 0.238...0.339),
                                  6.0: (0.284, 0.234...0.334, 0.234...0.334),
                                  6.2: (0.280, 0.230...0.330, 0.230...0.330),
                                  6.4: (0.276, 0.226...0.326, 0.226...0.326),
                                  6.6: (0.272, 0.222...0.322, 0.222...0.382),
                                  6.8: (0.348, 0.298...0.398, 0.240...0.478),
                                  7.0: (0.448, 0.398...0.498, 0.317...0.551),
                                  7.2: (0.519, 0.469...0.569, 0.413...0.608),
                                  7.4: (0.575, 0.525...0.625, 0.485...0.656)]
}
