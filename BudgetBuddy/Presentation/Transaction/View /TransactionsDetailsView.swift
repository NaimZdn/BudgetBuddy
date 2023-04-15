//
//  TransactionsDetailsView.swift
//  BudgetBuddy
//
//  Created by Zidouni on 15/04/2023.
//

import SwiftUI

struct TransactionsDetailsView: View {
    
    let account: Account
    
    var body: some View {
            VStack(spacing: 20) {
                HStack {
                    Text(account.name)
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    Text("\(String(format: "%.2f", account.amount)) \(account.currency.rawValue)")
                        .font(.title)
                        .fontWeight(.light)
        
                }
                AccentButton(title: "+ transaction", color: .primaryColor) {
                    
                }
                Divider()
                ScrollView {
                    VStack(spacing: 15) {
                        if account.transactions.isEmpty {
                            Text("Aucune transaction pour le moment...")
                                .font(.callout)
                                .foregroundColor(Color.footnoteColor)
                        }
                        ForEach(account.transactions) { transaction in
                            TransactionCell_(transaction: transaction)
                        }
                    }
                }
                Text("Solde initial : \(String(format: "%.2f", account.initialAmount)) \(account.currency.rawValue)")
                    .font(.callout)
                    .foregroundColor(Color.footnoteColor)
                    .padding()
            }
            .padding()
            .background(Color.backgroundColor)

    }
}

struct TransactionsDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsDetailsView(account: previewAccount[0])
    }
}
