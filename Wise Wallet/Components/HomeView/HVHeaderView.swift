//
//  HVHeaderView.swift
//  Wise Wallet
//
//  Created by Matheus Migge on 11/01/24.
//

import SwiftUI

struct HVHeaderView: View {
    
    @State private var isSheetPresented = false
    
    var body: some View {
        HStack {
            NavigationLink {
                AllExpensesView()
            } label: {
                Image(systemName: "list.bullet.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 35)
                    .foregroundStyle(Color.accentColor)
            }
            
            Spacer()
            
            HStack {
                Text("Semanal")
                    .foregroundStyle(Color("DefaultFontColor"))
                    .padding(5)
                    .background(Color.accentColor)
                    .cornerRadius(10.0)
                
                Text("Mensal")
                    .foregroundStyle(Color("DefaultFontColor"))
                    .fontWeight(.black)
                    .padding(5)
                    .background(Color.pink)
                    .cornerRadius(10.0)
            }
            .padding(5)
            .background(Color.accentColor)
            .cornerRadius(10.0)
            
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
        .frame(width: 330)
    }
}

#Preview {
    NavigationView {
        HVHeaderView()
    }
}
