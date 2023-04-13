//
//  AccountCell.swift
//  BudgetBuddy
//
//  Created by Zidouni on 01/04/2023.
//

import SwiftUI

struct AccountCell: View {
    
    let account: Account
    @State var isFavourite = false
    
    var body: some View {
        HStack() {
            Image(account.iconName)
                .resizable()
                .padding(4)
                .frame(width: 50, height:50)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(account.name)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text("Solde : \(String(format: "%.2f", account.amount)) $")
                    .font(.footnote)
                    .foregroundColor(Color.footnoteColor)
    
            }
            Spacer()
            Button {
                isFavourite.toggle()
            } label: {
                Image(systemName: isFavourite ? "star.fill" : "star")
                    .foregroundColor(isFavourite ? .yellow : Color(white: 0.4))
                    .font(.system(size: 18))
                    
            }

            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color.white,
                    in: RoundedRectangle(
                        cornerRadius: 20,
                        style: .continuous))
        
    }
}

struct AccountCell_Previews: PreviewProvider {
    
    static let previewAccount = (Account(iconName: "icon_paypal", name: "Paypal", amount: 123.89))
    
    
    static var previews: some View {
        AccountCell(account: previewAccount)
                .padding()
                .background(Color.backgroundColor)
   
    }
}

