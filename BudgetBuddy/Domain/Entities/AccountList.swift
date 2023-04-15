//
//  AccountList.swift
//  BudgetBuddy
//
//  Created by Zidouni on 15/04/2023.
//

import Foundation

class AccountList: ObservableObject {
   @Published var accounts: [Account]
    
    init(accounts: [Account] = []) {
        self.accounts = accounts
    }
}
