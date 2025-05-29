//
//  GameViewModel.swift
//  Code History
//
//  Created by Maël Colomé on 27/05/2025.
//

import Foundation
import SwiftUI
import Observation

@Observable
class GameViewModel {
    private var game = Game()
    
    var currentQuestion: Question {
      game.currentQuestion
    }
    
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    
    var gameIsOver: Bool {
      game.isOver
    }
    
    var correctGuesses: Int {
      game.guessCount.correct
    }
      
    var incorrectGuesses: Int {
      game.guessCount.incorrect
    }

    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }

    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex {
                return .white
            } else if guessedIndex == currentQuestion.correctAnswerIndex {
                return GameColor.correctGuess
            } else {
                return GameColor.incorrectGuess
            }
        } else {
            return .white
        }
    }
}
