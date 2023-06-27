//
//  AccountDetailView.swift
//  BudgetBuddy
//
//  Created by Zidouni on 27/06/2023.
//

import SwiftUI

struct AccountDetailView: View {
    let account: Account
    
    var body: some View {
        ScrollView{
            VStack(spacing: 24) {
                HStack {
                    Text(account.name)
                        .font(.system(size: 32, weight: .bold))
                    Spacer()
                    Text("\(String(format: "%.2f", account.amount)) \(account.currency.rawValue)")
                        .font(.system(size: 32, weight: .light))
                }
                AccentButton(title: "+ transaction", color: .primaryColor) {
                    
                }
                Divider()
                VStack(spacing: 15) {
                    if account.transactions.isEmpty {
                        Text("Acune transaction pour le moment")
                            .font(.callout)
                            .foregroundColor(Color(white: 0.4))
                    }
                    ForEach(account.transactions) { transaction in
                        TransactionCell(transaction: transaction)
                    }
                    Text("Solde initial : \(String(format: "%.2f", account.initialAmount)) \(account.currency.rawValue)")
                        .font(.callout)
                        .foregroundColor(Color(white: 0.4))
                        .padding()
                }
            }
            .padding()
        }
        .background(Color.backgroundColor)
    }
}

struct AccountDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailView(account: previewAccounts[0])
    }
}
