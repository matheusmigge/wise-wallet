//
//  AllExpensesView.swift
//  Wise Wallet
//
//  Created by Matheus Migge on 11/01/24.
//

import SwiftUI

struct AllExpensesView: View {
    
    var body: some View {
        
        VStack(spacing: 20) {
            AEHeaderView()
            AEListView()
        }
        .padding(.top, 10)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    NavigationView {
        AllExpensesView()
    }
}
