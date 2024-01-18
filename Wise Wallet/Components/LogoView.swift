//
//  LogoView.swift
//  Wise Wallet
//
//  Created by Matheus Migge on 11/01/24.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        
        HStack(spacing: 1) {
            Text("Wise")
                .padding(1)
                .background(Color.accentColor)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .fontWeight(.black)
                .foregroundColor(Color("DefaultFontColor"))
            Text("Wallet")
        }
        .foregroundColor(Color.accentColor)
        .frame(height: 20)
    }
}

#Preview {
    LogoView()
}
