//
//  CurrencySelector.swift
//  BudgetBuddy
//
//  Created by Zidouni on 13/04/2023.
//

import SwiftUI

struct CurrencySelector: View {
    
    private let currencies = Currency.allCases
    
    @Binding var selectedCurrency: Currency
    @State private var isSelectedMode = false
    
    var body: some View {
        ZStack {
            ForEach(currencies.indices) { index in
                Image(systemName: selectedCurrency == currencies[index] ? currencies[index].fillIconName : currencies[index].iconName)
                    .font(.system(size: 32))
                    .offset(x: isSelectedMode ? CGFloat(-index) * 40 : 0 )
                    .opacity(selectedCurrency == currencies[index] || isSelectedMode ? 1 : 0)
                    .onTapGesture {
                        if isSelectedMode {
                            selectedCurrency = currencies[index]
                            
                        }
                        withAnimation(.easeInOut(duration: 0.2)) {
                            isSelectedMode.toggle()
                        }
                        
                    }
            }
        }
    }
}

struct CurrencySelector_Previews: PreviewProvider {
    
    @State static var previewSelectedCurrency = Currency.euro
    static var previews: some View {
        CurrencySelector(selectedCurrency: $previewSelectedCurrency)
    }
}
