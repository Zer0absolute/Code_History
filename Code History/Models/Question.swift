//
//  Question.swift
//  Code History
//
//  Created by Maël Colomé on 18/05/2025.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
            Question(
                questionText: "Who invented the World Wide Web?",
                possibleAnswers: [
                    "Bill Gates",
                    "Tim Berners-Lee",
                    "Linus Torvalds",
                    "Steve Jobs"
                ],
                correctAnswerIndex: 1
            ),
            Question(
                questionText: "What was the first object oriented programming language?",
                possibleAnswers: [
                    "Simula",
                    "Python",
                    "Swift",
                    "C"
                ],
                correctAnswerIndex: 0
            ),
            Question(
                questionText: "Which company created the iPhone?",
                possibleAnswers: [
                    "Google",
                    "Microsoft",
                    "Apple",
                    "Samsung"
                ],
                correctAnswerIndex: 2
            ),
            Question(
                questionText: "Which language is primarily used for iOS development?",
                possibleAnswers: [
                    "Swift",
                    "Java",
                    "Kotlin",
                    "Ruby"
                ],
                correctAnswerIndex: 0
            ),
            Question(
                questionText: "What year was Python first released?",
                possibleAnswers: [
                    "1989",
                    "1991",
                    "1995",
                    "2000"
                ],
                correctAnswerIndex: 1
            ),
            Question(
                questionText: "Who is known as the father of computers?",
                possibleAnswers: [
                    "Charles Babbage",
                    "Alan Turing",
                    "Ada Lovelace",
                    "John von Neumann"
                ],
                correctAnswerIndex: 0
            ),
            Question(
                questionText: "Which of these is a version control system?",
                possibleAnswers: [
                    "Git",
                    "Docker",
                    "Linux",
                    "Apache"
                ],
                correctAnswerIndex: 0
            ),
            Question(
                questionText: "Which company developed the Windows operating system?",
                possibleAnswers: [
                    "Apple",
                    "IBM",
                    "Microsoft",
                    "Google"
                ],
                correctAnswerIndex: 2
            ),
            Question(
                questionText: "What is a CPU?",
                possibleAnswers: [
                    "Central Processor",
                    "Personal Unit",
                    "Programming Utility",
                    "Control Unit"
                ],
                correctAnswerIndex: 0
            ),
            Question(
                questionText: "Who is the father of computers?",
                possibleAnswers: [
                    "Babbage",
                    "Turing",
                    "Lovelace",
                    "Neumann"
                ],
                correctAnswerIndex: 0
            ),

    ]
}
