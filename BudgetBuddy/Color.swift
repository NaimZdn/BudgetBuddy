//
//  Color.swift
//  BudgetBuddy
//
//  Created by Zidouni on 31/03/2023.
//

import Foundation
import SwiftUI

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
    public static let backgroundColor = Color(hex: 0xEBE7E4)
    public static let tertiaryColor = Color(hex: 0xFED0AB)
    
    public static let primaryColor = Color(hex: 0xBDBDF4)
    public static let footnoteColor = Color(hex: 0x00000, alpha: 0.7)
}
