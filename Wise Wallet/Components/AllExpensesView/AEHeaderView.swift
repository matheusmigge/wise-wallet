//
//  FloatingButtonsView.swift
//  Wise Wallet
//
//  Created by Matheus Migge on 17/01/24.
//

import SwiftUI

struct AEHeaderView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var isSheetPresented = false
    
    var body: some View {
        HStack {
            Button {
                dismiss()
            } label: {
                Image(systemName: "gauge.with.needle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 35)
                    .foregroundStyle(Color.accentColor)
            }
            
            Spacer()
            
            HStack {
                Text("Histórico")
                    .foregroundStyle(Color.accentColor)
                    .fontWeight(.black)       
            }
                    
            Spacer()
            
            Button {
                isSheetPresented.toggle()
            } label: {
                Image(systemName: "plus.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 35)
                    .foregroundStyle(Color.accentColor)
            }
            .sheet(isPresented: $isSheetPresented) {
                AddingNewExpenseView()
            }
        }
        .frame(width: 300)
    }
}

#Preview {
    NavigationView {
        AEHeaderView()
            .background(.gray)
    }
}
