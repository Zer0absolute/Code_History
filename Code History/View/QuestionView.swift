//
//  SwiftUIView.swift
//  Code History
//
//  Created by Maël Colomé on 27/05/2025.
//

import SwiftUI

struct QuestionView: View {
    let question: Question
    @Bindable var viewModel: GameViewModel
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.title)
                .bold()
                .multilineTextAlignment(.center)
                .padding()
                .background(GameColor.accent)
                .cornerRadius(10)

            VStack {
                Spacer()
                ForEach(0..<question.possibleAnswers.count, id: \.self) { answerIndex in
                    Button(action: {
                        viewModel.makeGuess(atIndex: answerIndex)
                    }) {
                        ChoiceTextView(
                            choiceText: question.possibleAnswers[answerIndex],
                            backgroundColor: viewModel.color(forOptionIndex: answerIndex)
                        )
                    }
                    .disabled(viewModel.guessWasMade)
                }
                Spacer()
            }
        }
        .padding()
    }
}

// Exemple pour le preview
struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = GameViewModel()
        QuestionView(question: viewModel.currentQuestion, viewModel: viewModel)
    }
}
