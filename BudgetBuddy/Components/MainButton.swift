//
//  MainButton.swift
//  BudgetBuddy
//
//  Created by Zidouni on 14/04/2023.
//

import SwiftUI

struct MainButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .font(.headline)
                .foregroundColor(Color.white)
                .padding(15)
                .frame(maxWidth: .infinity)
                .background(Color.black, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
        }
    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        MainButton(title: "Preview Button", action: {
            print("Hello world !")
        })
    }
}
