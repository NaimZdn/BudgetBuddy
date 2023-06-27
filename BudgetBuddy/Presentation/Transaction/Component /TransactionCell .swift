//
//  TransactionCell.swift
//  BudgetBuddy
//
//  Created by Zidouni on 15/04/2023.
//

import SwiftUI

struct TransactionCell: View {
    
    let transaction: Transaction
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy à HH:mm"
        return formatter
    }()
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(transaction.label)
                    .font(.headline)
                Text(dateFormatter.string(from: transaction.date))
                    .font(.footnote)
                    .foregroundColor(Color.footnoteColor)
            }
            Spacer()
            Text("\(transaction.amount.description) \(transaction.currency.rawValue)")
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 15)
        .background(Color.white, in: RoundedRectangle(cornerRadius: 20, style: .continuous))

    }
        
}

struct TransactionCell_Previews: PreviewProvider {
    static var previews: some View {
        TransactionCell(transaction: previewTransaction[0])
            .padding()
            .background(Color.backgroundColor)
            .previewLayout(.sizeThatFits)
    }
}
