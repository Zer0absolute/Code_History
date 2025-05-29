//
//  GameView.swift
//  Code History
//
//  Created by Maël Colomé on 16/03/2025.
//

import SwiftUI

struct GameView: View {
    @State var viewModel = GameViewModel()
    
    var body: some View {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    VStack {
                        Text(viewModel.questionProgressText)
                            .multilineTextAlignment(.center)
                            .font(.callout)
                            .padding(0.1)
                        QuestionView(question: viewModel.currentQuestion, viewModel: viewModel)
                    }
                    .padding()
                    .cornerRadius(10)
                }
                .padding()
                
                VStack {
                    Spacer()
                    if viewModel.guessWasMade {
                        Button(action: {
                            viewModel.displayNextScreen()
                        }, label: {
                            Text("Next")
                                .bold()
                                .foregroundColor(GameColor.accent)
                                .padding()
                                .frame(width: 200, height: 50)
                                .background(Color.white)
                                .cornerRadius(10)
                        })
                    }
                }
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
            .navigationDestination(isPresented: .constant(viewModel.gameIsOver)) {
                ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses,
                           incorrectGuesses: viewModel.incorrectGuesses)).navigationBarHidden(true)
            }
        }
    }

#Preview {
    GameView()
}

