//
//  SwiftUIView.swift
//  Code History
//
//  Created by Maël Colomé on 27/05/2025.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
        
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }.background(GameColor.accent)
    }
}


struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Test")
    }
}

