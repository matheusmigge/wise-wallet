//
//  HomeView.swift
//  Wise Wallet
//
//  Created by Matheus Migge on 10/01/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                
                HVHeaderView()
                
                ScrollView {
                    VStack(spacing: 30) {
                        
                        HVRemainingBudgetView(budgetValue: 1400, amountSpent: 346)
                            .padding(.top, 40)
                        HVBudgetSummaryView()
                    }
                }
            }
            .padding(.top, 10)
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    HomeView()
}
