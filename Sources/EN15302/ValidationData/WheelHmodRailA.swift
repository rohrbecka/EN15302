//
//  WheelHmodRailA.swift
//  
//
//  Created by André Rohrbeck on 14.01.23.
//

import Foundation

/// The results for the combination of the modified wheel H with rail A according to EN 15302:2021
/// appendices J.9 and K.9.
public enum WheelHmodRailA: ValidationResult {

    public static var deltaR = [-6.8: -10.199,
                                 -6.7: -2.324,
                                 -6.6: -2.302,
                                 -6.5: -2.279,
                                 -6.4: -2.257,
                                 -6.3: -2.234,
                                 -6.2: -2.212,
                                 -6.1: -2.189,
                                 -6.0: -2.167,
                                 -5.9: -2.144,
                                 -5.8: -2.122,
                                 -5.7: -2.099,
                                 -5.6: -2.077,
                                 -5.5: -2.054,
                                 -5.4: -2.032,
                                 -5.3: -2.009,
                                 -5.2: -1.987,
                                 -5.1: -1.964,
                                 -5.0: -1.942,
                                 -4.9: -1.919,
                                 -4.8: -1.897,
                                 -4.7: -1.874,
                                 -4.6: -1.852,
                                 -4.5: -1.829,
                                 -4.4: -1.807,
                                 -4.3: -1.784,
                                 -4.2: -1.762,
                                 -4.1: -1.739,
                                 -4.0: -1.717,
                                 -3.9: -1.694,
                                 -3.8: -1.672,
                                 -3.7: -1.649,
                                 -3.6: -1.627,
                                 -3.5: -1.604,
                                 -3.4: -1.582,
                                 -3.3: -1.559,
                                 -3.2: -1.537,
                                 -3.1: -1.514,
                                 -3.0: -1.492,
                                 -2.9: -1.469,
                                 -2.8: -1.447,
                                 -2.7: -1.424,
                                 -2.6: -1.402,
                                 -2.5: 0.875,
                                 -2.4: 0.880,
                                 -2.3: 0.885,
                                 -2.2: 0.890,
                                 -2.1: 0.895,
                                 -2.0: 0.900,
                                 -1.9: 0.905,
                                 -1.8: 0.910,
                                 -1.7: 0.915,
                                 -1.6: 0.920,
                                 -1.5: 0.925,
                                 -1.4: 0.930,
                                 -1.3: 0.935,
                                 -1.2: 0.940,
                                 -1.1: 0.945,
                                 -1.0: 0.950,
                                 -0.9: 0.955,
                                 -0.8: 0.960,
                                 -0.7: 0.965,
                                 -0.6: 0.970,
                                 -0.5: 0.975,
                                 -0.4: 0.980,
                                 -0.3: 0.985,
                                 -0.2: 0.990,
                                 -0.1: 0.995,
                                 0.0: 1.0,
                                 6.8: 12.199,
                                 6.7: 4.324,
                                 6.6: 4.302,
                                 6.5: 4.279,
                                 6.4: 4.257,
                                 6.3: 4.234,
                                 6.2: 4.212,
                                 6.1: 4.189,
                                 6.0: 4.167,
                                 5.9: 4.144,
                                 5.8: 4.122,
                                 5.7: 4.099,
                                 5.6: 4.077,
                                 5.5: 4.054,
                                 5.4: 4.032,
                                 5.3: 4.009,
                                 5.2: 3.987,
                                 5.1: 3.964,
                                 5.0: 3.942,
                                 4.9: 3.919,
                                 4.8: 3.897,
                                 4.7: 3.874,
                                 4.6: 3.852,
                                 4.5: 3.829,
                                 4.4: 3.807,
                                 4.3: 3.784,
                                 4.2: 3.762,
                                 4.1: 3.739,
                                 4.0: 3.717,
                                 3.9: 3.694,
                                 3.8: 3.672,
                                 3.7: 3.649,
                                 3.6: 3.627,
                                 3.5: 3.604,
                                 3.4: 3.582,
                                 3.3: 3.559,
                                 3.2: 3.537,
                                 3.1: 3.514,
                                 3.0: 3.492,
                                 2.9: 3.469,
                                 2.8: 3.447,
                                 2.7: 3.424,
                                 2.6: 3.402,
                                 2.5: 1.125,
                                 2.4: 1.120,
                                 2.3: 1.115,
                                 2.2: 1.110,
                                 2.1: 1.105,
                                 2.0: 1.100,
                                 1.9: 1.095,
                                 1.8: 1.090,
                                 1.7: 1.085,
                                 1.6: 1.080,
                                 1.5: 1.075,
                                 1.4: 1.070,
                                 1.3: 1.065,
                                 1.2: 1.060,
                                 1.1: 1.055,
                                 1.0: 1.050,
                                 0.9: 1.045,
                                 0.8: 1.040,
                                 0.7: 1.035,
                                 0.6: 1.030,
                                 0.5: 1.025,
                                 0.4: 1.020,
                                 0.3: 1.015,
                                 0.2: 1.010,
                                 0.1: 1.005]


    public static var conicity = [1.0: (0.713, 0.663...0.763, 0.663...0.763),
                                  1.2: (0.603, 0.553...0.653, 0.497...0.700),
                                  1.4: (0.523, 0.473...0.573, 0.435...0.632),
                                  1.6: (0.463, 0.413...0.513, 0.388...0.552),
                                  1.8: (0.417, 0.367...0.467, 0.349...0.493),
                                  2.0: (0.380, 0.330...0.430, 0.318...0.448),
                                  2.2: (0.350, 0.300...0.400, 0.291...0.413),
                                  2.4: (0.325, 0.275...0.375, 0.268...0.383),
                                  2.6: (0.304, 0.254...0.354, 0.249...0.359),
                                  2.8: (0.286, 0.236...0.336, 0.232...0.340),
                                  3.0: (0.270, 0.220...0.320, 0.217...0.323),
                                  3.2: (0.256, 0.206...0.306, 0.204...0.308),
                                  3.4: (0.244, 0.194...0.294, 0.192...0.295),
                                  3.6: (0.233, 0.183...0.283, 0.182...0.284),
                                  3.8: (0.223, 0.173...0.273, 0.173...0.273),
                                  4.0: (0.223, 0.173...0.273, 0.173...0.293),
                                  4.2: (0.260, 0.210...0.310, 0.191...0.314),
                                  4.4: (0.271, 0.221...0.321, 0.219...0.322),
                                  4.6: (0.276, 0.226...0.326, 0.226...0.326),
                                  4.8: (0.277, 0.227...0.327, 0.227...0.328),
                                  5.0: (0.278, 0.228...0.328, 0.228...0.373),
                                  5.2: (0.342, 0.292...0.392, 0.247...0.412),
                                  5.4: (0.376, 0.326...0.426, 0.305...0.435),
                                  5.6: (0.397, 0.347...0.447, 0.339...0.452),
                                  5.8: (0.413, 0.363...0.463, 0.359...0.465),
                                  6.0: (0.423, 0.373...0.473, 0.372...0.474),
                                  6.2: (0.431, 0.381...0.481, 0.380...0.481),
                                  6.4: (0.436, 0.486...0.386, 0.386...0.486),
                                  6.6: (0.440, 0.390...0.490, 0.390...0.490),
                                  6.8: (0.442, 0.392...0.492, 0.392...0.492),
                                  7.0: (0.443, 0.393...0.493, 0.393...0.493),
                                  7.2: (0.444, 0.394...0.494, 0.394...0.575),
                                  7.4: (0.545, 0.495...0.595, 0.413...0.639)]
}