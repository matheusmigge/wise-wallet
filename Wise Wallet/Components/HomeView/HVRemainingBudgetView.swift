//
//  HVRemainingBudgetView.swift
//  Wise Wallet
//
//  Created by Matheus Migge on 10/01/24.
//

import SwiftUI

struct HVRemainingBudgetView: View {
    
    var budgetValue: Double
    var amountSpent: Double
    var progressBarWidth: Double = 0.75
    let progressBarHeight: Double = 20
    
    private var spentProgressPercent: Double {
        return amountSpent / budgetValue
    }
    private var spentProgressBarWidth: Double {
        if spentProgressPercent * progressBarWidth >= progressBarWidth {
            return progressBarWidth
        }
        return spentProgressPercent * progressBarWidth
    }
    private var balance: Double {
        return budgetValue - amountSpent
    }
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 2) {
                Text("Disponível para o mês:")
                
                HStack {
                    Circle()
                        .frame(height: 15)
                        .foregroundStyle(Color("BudgetColor"))
                    
                    Text("R$ \(formatNumber(balance))")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundStyle(Color("BudgetColor"))
                }
                
                Text("Gasto até agora:")
                    .font(.subheadline)
                
                HStack {
                    Circle()
                        .frame(height: 15)
                        .foregroundStyle(Color("SpentColor"))
                    
                    Text("R$ \(formatNumber(amountSpent))")
                        .fontWeight(.bold)
                        .font(.title2)
                        .foregroundStyle(Color("SpentColor"))
                }
            }
            
            Circle()
                .trim(from: 0.0,to: progressBarWidth)
                .stroke(Color("BudgetColor"), style: .init(lineWidth: progressBarHeight, lineCap: .round))
                .rotationEffect(.degrees(135))
            Circle()
                .trim(from: 0.0,to: spentProgressBarWidth)
                .stroke(Color("SpentColor"), style: .init(lineWidth: progressBarHeight, lineCap: .round))
                .rotationEffect(.degrees(135))
                .shadow(color: Color("SpentColor"), radius: 5)
            
            VStack {
                Spacer()
                
                Text("Janeiro")
                    .fontWeight(.bold)
                    .foregroundStyle(Color("DefaultFontColor"))
                    .frame(width: 140, height: 30)
                    .background(Color("SpentColor"))
                    .cornerRadius(10.0)
            }
        }
        .frame(height: 260)
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
    HVRemainingBudgetView(budgetValue: 1000, amountSpent: 970)
        .padding()
}
