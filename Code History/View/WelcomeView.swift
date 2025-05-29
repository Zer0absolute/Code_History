//
//  WelcomeView.swift
//  Code History
//
//  Created by Maël Colomé on 26/05/2025.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack {
                        Text("Code History")
                            .multilineTextAlignment(.center)
                            .font(.largeTitle)
                            .bold()
                            .padding()
                        Text("Select the correct answers to the following questions.")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            Text("Let's Go")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 200, height: 50)
                                .background(GameColor.accent)
                                .cornerRadius(10)
//                            If you don't like TextButton use BottomTextView and delete Spacer() from bottom
//                            BottomTextView(str: "Let's Go")
                    })
                    Spacer()
                }
                .foregroundColor(.white)
                .navigationBarHidden(true)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
