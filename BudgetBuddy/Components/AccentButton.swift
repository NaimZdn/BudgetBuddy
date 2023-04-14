//
//  AccentButton.swift
//  BudgetBuddy
//
//  Created by Zidouni on 14/04/2023.
//

import SwiftUI

struct AccentButton: View {
    
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.black)
                .font(.callout)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(10)
                .background(Color.tertiaryColor, in: RoundedRectangle(cornerRadius: 15))
            
        }

    }
}

struct AccentButton_Previews: PreviewProvider {
    static var previews: some View {
        AccentButton(title: "Text Button",color: Color.tertiaryColor, action: {})
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
