//
//  Currency.swift
//  BudgetBuddy
//
//  Created by Zidouni on 13/04/2023.
//

import SwiftUI

enum Currency: String, CaseIterable {
    case dollar = "$"
    case euro = "€"
    case ruble = "₽"
    case sterling = "£"
    case yen = "¥"
    
    var iconName: String {
        switch self {
        case .dollar:
            return "dollarsign.circle"
        case .euro:
            return "eurosign.circle"
        case .ruble:
            return "rublesign.circle"
        case .sterling:
            return "sterlingsign.circle"
        case .yen:
            return "yensign.circle"
        }
    }
    
    var fillIconName: String {
        "\(iconName).fill"
    }
}

