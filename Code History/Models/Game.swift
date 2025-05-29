//
//  Game.swift
//  Code History
//
//  Created by Maël Colomé on 24/05/2025.
//

import Foundation

struct Game {
    private(set) var currentQuestionIndex: Int = 0
    private(set) var isOver = false
    private(set) var guesses = [Question: Int]()
    private let questions = Question.allQuestions.shuffled()
    
    var guessCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, guessedIndex) in guesses {
            if question.correctAnswerIndex == guessedIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        
        return count
    }
    
    var numberOfQuestions: Int {
        return questions.count
    }
    
    var currentQuestion: Question {
        return questions[currentQuestionIndex]
    }
    
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[questions[currentQuestionIndex]] = index
    }
    
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
}
