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
            VStack {
                Text("Disponível para o mês:")
                    .font(.subheadline)
                
                Text("R$ \(formatNumber(balance))")
                    .fontWeight(.black)
                    .font(.title)
                    .foregroundStyle(Color.accentColor)
                
                Text("Gasto até agora:")
                    .font(.subheadline)
                Text("R$ \(formatNumber(amountSpent))")
                    .fontWeight(.black)
                    .font(.title2)
                    .foregroundStyle(Color.pink)
            }
            
            Circle()
                .trim(from: 0.0,to: progressBarWidth)
                .stroke(Color.accentColor, style: .init(lineWidth: progressBarHeight, lineCap: .round))
                .rotationEffect(.degrees(135))
            Circle()
                .trim(from: 0.0,to: spentProgressBarWidth)
                .stroke(Color.pink, style: .init(lineWidth: progressBarHeight, lineCap: .round))
                .rotationEffect(.degrees(135))
                .shadow(color: .pink, radius: 5)
            
            VStack {
                Spacer()
                
                Text("Janeiro")
                    .fontWeight(.black)
                    .foregroundStyle(Color("DefaultFontColor"))
                    .frame(width: 140, height: 30)
                    .background(Color.accentColor)
                    .cornerRadius(10.0)
            }
        }
        .frame(width: 250, height: 250)
        .padding(.top, 25)
        .padding(.bottom, 20)
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
