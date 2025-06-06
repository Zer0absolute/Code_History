//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Maël Colomé on 28/05/2025.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        correctGuesses * 100 / (correctGuesses + incorrectGuesses)
    }
}
