//
//  HVBudgetSummaryView.swift
//  Wise Wallet
//
//  Created by Matheus Migge on 10/01/24.
//

import SwiftUI

struct HVBudgetSummaryView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 2) {
            
            HVSingleBudgetProgressView(budgetName: "Mercado", budgetValue: 500.0, amountSpent: 300.00)
            HVSingleBudgetProgressView(budgetName: "Comida extra", budgetValue: 800.0, amountSpent: 700.00)
            HVSingleBudgetProgressView(budgetName: "Lazer", budgetValue: 500.0, amountSpent: 50.0)
            HVSingleBudgetProgressView(budgetName: "Transporte", budgetValue: 250.0, amountSpent: 125.00)
            HVSingleBudgetProgressView(budgetName: "Emergências", budgetValue: 100.0, amountSpent: 0.0)
            HVSingleBudgetProgressView(budgetName: "Outros", budgetValue: 100.0, amountSpent: 75.00)
            HVSingleBudgetProgressView(budgetName: "Custos fixos", budgetValue: 700.0, amountSpent: 700.00)
            HVSingleBudgetProgressView(budgetName: "Parcelas", budgetValue: 500.0, amountSpent: 300.0)
            HVSingleBudgetProgressView(budgetName: "Compras", budgetValue: 200.0, amountSpent: 50.00)
        }
        .padding(.bottom, 20)
    }
}

#Preview {
    HVBudgetSummaryView()
}
