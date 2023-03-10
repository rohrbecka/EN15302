//
//  WheelIRailA.swift
//  
//
//  Created by André Rohrbeck on 05.01.23.
//

import Foundation

/// The results for the combination of wheel I with rail A according to EN 15302:2021
/// appendices J.6 and K.6.
public enum WheelIRailA: ValidationResult {

    public static var deltaR = [-7.1: -11.150,
                                 -7.0: -9.288,
                                 -6.9: -7.922,
                                 -6.8: -6.878,
                                 -6.7: -6.075,
                                 -6.6: -5.469,
                                 -6.5: -5.194,
                                 -6.4: -5.160,
                                 -6.3: -5.126,
                                 -6.2: -5.092,
                                 -6.1: -5.059,
                                 -6.0: -5.025,
                                 -5.9: -4.992,
                                 -5.8: -4.958,
                                 -5.7: -4.925,
                                 -5.6: -4.892,
                                 -5.5: -4.859,
                                 -5.4: -4.826,
                                 -5.3: -4.793,
                                 -5.2: -4.761,
                                 -5.1: -4.728,
                                 -5.0: -4.696,
                                 -4.9: -4.612,
                                 -4.8: -4.526,
                                 -4.7: -4.442,
                                 -4.6: -4.358,
                                 -4.5: -4.276,
                                 -4.4: -4.194,
                                 -4.3: -4.113,
                                 -4.2: -4.033,
                                 -4.1: -3.953,
                                 -4.0: -3.875,
                                 -3.9: -3.797,
                                 -3.8: -3.720,
                                 -3.7: -3.644,
                                 -3.6: -3.569,
                                 -3.5: -3.494,
                                 -3.4: -3.421,
                                 -3.3: -3.348,
                                 -3.2: -3.276,
                                 -3.1: -3.205,
                                 -3.0: -3.134,
                                 -2.9: -3.065,
                                 -2.8: -2.996,
                                 -2.7: -2.928,
                                 -2.6: -2.861,
                                 -2.5: -2.795,
                                 -2.4: -2.729,
                                 -2.3: -2.665,
                                 -2.2: -2.601,
                                 -2.1: -2.538,
                                 -2.0: -2.475,
                                 -1.9: -2.414,
                                 -1.8: -2.353,
                                 -1.7: 0.0,
                                 -1.6: 0.0,
                                 -1.5: 0.0,
                                 -1.4: 0.0,
                                 -1.3: 0.0,
                                 -1.2: 0.0,
                                 -1.1: 0.0,
                                 -1.0: 0.0,
                                 -0.9: 0.0,
                                 -0.8: 0.0,
                                 -0.7: 0.0,
                                 -0.6: 0.0,
                                 -0.5: 0.0,
                                 -0.4: 0.0,
                                 -0.3: 0.0,
                                 -0.2: 0.0,
                                 -0.1: 0.0,
                                 0.0: 0.0,
                                 7.1: 11.150,
                                 7.0: 9.288,
                                 6.9: 7.922,
                                 6.8: 6.878,
                                 6.7: 6.075,
                                 6.6: 5.469,
                                 6.5: 5.194,
                                 6.4: 5.160,
                                 6.3: 5.126,
                                 6.2: 5.092,
                                 6.1: 5.059,
                                 6.0: 5.025,
                                 5.9: 4.992,
                                 5.8: 4.958,
                                 5.7: 4.925,
                                 5.6: 4.892,
                                 5.5: 4.859,
                                 5.4: 4.826,
                                 5.3: 4.793,
                                 5.2: 4.761,
                                 5.1: 4.728,
                                 5.0: 4.696,
                                 4.9: 4.612,
                                 4.8: 4.526,
                                 4.7: 4.442,
                                 4.6: 4.358,
                                 4.5: 4.276,
                                 4.4: 4.194,
                                 4.3: 4.113,
                                 4.2: 4.033,
                                 4.1: 3.953,
                                 4.0: 3.875,
                                 3.9: 3.797,
                                 3.8: 3.720,
                                 3.7: 3.644,
                                 3.6: 3.569,
                                 3.5: 3.494,
                                 3.4: 3.421,
                                 3.3: 3.348,
                                 3.2: 3.276,
                                 3.1: 3.205,
                                 3.0: 3.134,
                                 2.9: 3.065,
                                 2.8: 2.996,
                                 2.7: 2.928,
                                 2.6: 2.861,
                                 2.5: 2.795,
                                 2.4: 2.729,
                                 2.3: 2.665,
                                 2.2: 2.601,
                                 2.1: 2.538,
                                 2.0: 2.475,
                                 1.9: 2.414,
                                 1.8: 2.353,
                                 1.7: 0.0,
                                 1.6: 0.0,
                                 1.5: 0.0,
                                 1.4: 0.0,
                                 1.3: 0.0,
                                 1.2: 0.0,
                                 1.1: 0.0,
                                 1.0: 0.0,
                                 0.9: 0.0,
                                 0.8: 0.0,
                                 0.7: 0.0,
                                 0.6: 0.0,
                                 0.5: 0.0,
                                 0.4: 0.0,
                                 0.3: 0.0,
                                 0.2: 0.0,
                                 0.1: 0.0]


    public static var conicity = [1.0: (0.000, 0.000...0.000, 0.000...0.000),
                                  1.2: (0.000, 0.000...0.000, 0.000...0.000),
                                  1.4: (0.000, 0.000...0.000, 0.000...0.000),
                                  1.6: (0.000, 0.000...0.000, 0.000...0.159),
                                  1.8: (0.131, 0.081...0.181, 0.012...0.331),
                                  2.0: (0.301, 0.251...0.351, 0.101...0.432),
                                  2.2: (0.400, 0.350...0.450, 0.264...0.484),
                                  2.4: (0.450, 0.400...0.500, 0.362...0.513),
                                  2.6: (0.475, 0.425...0.525, 0.413...0.529),
                                  2.8: (0.488, 0.438...0.538, 0.435...0.538),
                                  3.0: (0.493, 0.443...0.543, 0.443...0.543),
                                  3.2: (0.495, 0.445...0.545, 0.445...0.545),
                                  3.4: (0.494, 0.444...0.544, 0.444...0.544),
                                  3.6: (0.493, 0.443...0.543, 0.443...0.543),
                                  3.8: (0.490, 0.440...0.540, 0.440...0.540),
                                  4.0: (0.488, 0.438...0.538, 0.438...0.538),
                                  4.2: (0.485, 0.435...0.535, 0.435...0.535),
                                  4.4: (0.483, 0.433...0.533, 0.433...0.533),
                                  4.6: (0.481, 0.431...0.531, 0.431...0.531),
                                  4.8: (0.479, 0.429...0.529, 0.429...0.529),
                                  5.0: (0.476, 0.426...0.526, 0.426...0.526),
                                  5.2: (0.472, 0.422...0.522, 0.422...0.522),
                                  5.4: (0.467, 0.417...0.517, 0.417...0.517),
                                  5.6: (0.461, 0.411...0.511, 0.411...0.511),
                                  5.8: (0.454, 0.404...0.504, 0.404...0.504),
                                  6.0: (0.448, 0.398...0.498, 0.398...0.498),
                                  6.2: (0.441, 0.391...0.491, 0.391...0.492),
                                  6.4: (0.435, 0.385...0.485, 0.385...0.485),
                                  6.6: (0.434, 0.384...0.484, 0.384...0.489),
                                  6.8: (0.450, 0.400...0.500, 0.394...0.526),
                                  7.0: (0.490, 0.440...0.540, 0.416...0.586),
                                  7.2: (0.555, 0.505...0.605, 0.459...0.648),
                                  7.4: (0.617, 0.567...0.667, 0.523...0.696)]
}
