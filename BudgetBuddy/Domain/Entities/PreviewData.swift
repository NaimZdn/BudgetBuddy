//
//  PreviewData.swift
//  BudgetBuddy
//
//  Created by Zidouni on 15/04/2023.
//

import Foundation

let previewAccounts: [Account] = [
    //Account(iconName: "paypal", name: "Paypal", amount: 135.89),
    //Account(iconName: "binance", name: "Binance", amount: 2032.12),
    Account(iconName: "masterCard", name: "Revolut", initialAmount: 5000.00, transactions: previewTransaction, currency: .euro)
]

let previewTransaction = [
    Transaction(label: "Repas du midi", amount: 8.90, currency: .euro, date: Date()),
    Transaction(label: "MacBook pro", amount: 3999.00, currency: .euro, date: Date()),
    Transaction(label: "Salle de sport", amount: 19.90, currency: .euro, date: Date())
]
