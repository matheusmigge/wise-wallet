//
//  HomeView.swift
//  Wise Wallet
//
//  Created by Matheus Migge on 10/01/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var selectedOption = "Mensal"
    @State private var isSheetPresented = false
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack (spacing: 30){
                    
                    HVRemainingBudgetView(budgetValue: 1400, amountSpent: 346)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    HVBudgetSummaryView()
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Picker("Frequência", selection: $selectedOption) {
                        Text("Semanal").tag("Semanal")
                        Text("Mensal").tag("Mensal")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink {
                        AllExpensesView()
                    } label: {
                        Image(systemName: "list.bullet.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 25)
                            .foregroundStyle(Color.accentColor)
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isSheetPresented.toggle()
                    } label: {
                        Image(systemName: "plus.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 25)
                            .foregroundStyle(Color.accentColor)
                    }
                    .sheet(isPresented: $isSheetPresented) {
                        AddingNewExpenseView()
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
