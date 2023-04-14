//
//  IconSelector.swift
//  BudgetBuddy
//
//  Created by Zidouni on 14/04/2023.
//

import SwiftUI

struct IconSelector: View {
    
    @Binding var selectedIcon: String
    private let icons = [
        "americanExpress",
        "masterCard",
        "visa",
        "paypal",
        "binance",
        "airBnb"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(icons, id: \.self) { iconName in
                    Button {
                        selectedIcon = iconName
                    } label: {
                        Circle()
                            .frame(width: 65, height: 65)
                            .foregroundColor(iconName == selectedIcon ? .black : .white)
                            .overlay {
                                Image(iconName)
                                    .resizable()
                                    .renderingMode(.template)
                                    .foregroundColor(iconName == selectedIcon ? .white : .black)
                                    .frame(width: 40, height: 40)
                    }
                            
                        }
                    
                }
            }

        }
    }
    
    struct IconSelector_Previews: PreviewProvider {
        
        @State static var previewSelectedIcon = "americanExpress"
        static var previews: some View {
            IconSelector(selectedIcon: $previewSelectedIcon)
                .padding(.vertical)
                .previewLayout(.sizeThatFits)
                .background(Color.backgroundColor)
        }
    }
}
    
