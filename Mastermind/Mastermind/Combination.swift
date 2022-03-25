//
//  Combination.swift
//  Mastermind
//
//  Created by Alumne on 25/3/22.
//

import Foundation
enum Result {
    case exists
    case rightPlace
}
enum Color {
    case red
    case yellow
    case blue
    case green
    
}
struct Combination{
    var comb: [Color] = []
    var results: [Result] = []
}
