//
//  Transaction.swift
//  BudgetBuddy
//
//  Created by Zidouni on 15/04/2023.
//

import Foundation

struct Transaction: Identifiable {
    let id = UUID()
    let label: String
    let amount: Double
    let currency: Currency
    let date: Date
    
}
