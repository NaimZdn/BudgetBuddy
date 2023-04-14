//
//  AccountCreationView.swift
//  BudgetBuddy
//
//  Created by Zidouni on 13/04/2023.
//

import SwiftUI

struct AccountCreationView: View {
    
    @State private var amount: String = ""
    @State private var selectedCurrency: Currency = .euro
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Solde initial")
                .font(.title2)
                .bold()
            HStack{
                TextField("Ex : 200 \(selectedCurrency.rawValue)", text: $amount)
                    .padding(10)
                    .padding(.horizontal, 5)
                    .keyboardType(.numbersAndPunctuation)
                    .submitLabel(.done)
                CurrencySelector(selectedCurrency: $selectedCurrency)
                    .foregroundColor(Color.secondaryColor)
                    .padding(10)
            }
            .background(Color.white, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
        }
        .padding()
        .background(Color.backgroundColor)
    }
}

struct AccountCreationView_Previews: PreviewProvider {
    static var previews: some View {
        AccountCreationView()
    }
}
