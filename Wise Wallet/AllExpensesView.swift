//
//  AllExpensesView.swift
//  Wise Wallet
//
//  Created by Matheus Migge on 11/01/24.
//

import SwiftUI

struct AllExpensesView: View {
    
    @State private var isSheetPresented = false
    
    var body: some View {
        
        AEListView()
            .navigationTitle("Histórico")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
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

#Preview {
    NavigationView {
        AllExpensesView()
    }
}
