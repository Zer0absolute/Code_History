//
//  ChoiceTextView.swift
//  Code History
//
//  Created by Maël Colomé on 18/05/2025.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let backgroundColor: Color

    var body: some View {
        Text(choiceText)
            .bold()
            .foregroundColor(GameColor.accent)
            .padding()
            .frame(width: 200, height: 50)
            .background(backgroundColor)
            .cornerRadius(10)
            .padding(.vertical, 5)
    }
}


struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice text", backgroundColor: .white)
    }
}
