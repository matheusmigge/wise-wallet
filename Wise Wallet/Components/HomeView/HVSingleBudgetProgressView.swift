//
//  HVSingleBudgetProgressView.swift
//  Wise Wallet
//
//  Created by Matheus Migge on 11/01/24.
//

import SwiftUI

struct HVSingleBudgetProgressView: View {
    
    let budgetName: String
    var budgetValue: Double
    var amountSpent: Double
    var progressBarWidth: Double = 330
    let progressBarHeight: Double = 40
    
    private var spentProgressPercent: Double {
        return amountSpent / budgetValue
    }
    private var spentProgressBarWidth: Double {
        if spentProgressPercent * progressBarWidth >= progressBarWidth {
            return progressBarWidth
        }
        return spentProgressPercent * progressBarWidth
    }
    

    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(width: progressBarWidth, height: progressBarHeight)
                    .foregroundStyle(Color("BudgetColor"))
                
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(width: spentProgressBarWidth, height: progressBarHeight)
                    .foregroundStyle(Color("SpentColor"))
                
                HStack {
                    Text("\(budgetName)")
                    Spacer()
                    Text("\(formatNumber(amountSpent)) / \(formatNumber(budgetValue))")
                }
                .font(.callout)
                .fontWeight(.bold)
                .frame(width: progressBarWidth-10)
                .padding(.horizontal, 7)
                .foregroundStyle(Color("DefaultFontColor"))
            }
        }
    }
    
    func formatNumber(_ number: Double) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.minimumFractionDigits = 2
        numberFormatter.maximumFractionDigits = 2
        numberFormatter.groupingSeparator = "."
        numberFormatter.decimalSeparator = ","
        
        return numberFormatter.string(from: NSNumber(value: number)) ?? ""
    }
}

#Preview {
    HVSingleBudgetProgressView(budgetName: "Aluguel", budgetValue: 1000, amountSpent: 900)
}
