//
//  GameState.swift
//  RPS
//
//  Created by Manoli on 23/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import Foundation

enum GameState {
    case start, win, lose, draw
    
    var status: String {
        switch self {
        case .start:
            return "Rock, Paper, Scissors?"
        case .win:
            return "You Won!"
        case .lose:
            return "You Lost!"
        case .draw:
            return "It's a Draw!"
        }
    }
}
