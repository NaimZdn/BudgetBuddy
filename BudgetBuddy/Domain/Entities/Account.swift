//
//  Account.swift
//  BudgetBuddy
//
//  Created by Zidouni on 01/04/2023.
//

import Foundation

struct Account: Identifiable {
    let id = UUID()
    let iconName: String
    let name: String
    let amount: Double
    
}
