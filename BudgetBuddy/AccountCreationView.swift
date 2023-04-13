//
//  AccountCreationView.swift
//  BudgetBuddy
//
//  Created by Zidouni on 13/04/2023.
//

import SwiftUI

struct AccountCreationView: View {
    
    @State private var amount: String = ""
    
    var body: some View {
        HStack{
            TextField("Ex : 200€", text: $amount)
                .padding(10)
                .padding(.horizontal, 5)
                .keyboardType(.numbersAndPunctuation)
                .submitLabel(.done)
            CurrencySelector()
                .foregroundColor(Color.secondaryColor)
                .padding(10)
        }
        .background(Color.white, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
        .padding()
        .background(Color.backgroundColor)
    }
}

struct AccountCreationView_Previews: PreviewProvider {
    static var previews: some View {
        AccountCreationView()
    }
}
