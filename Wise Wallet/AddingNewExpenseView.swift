//
//  AddingNewExpenseView.swift
//  Wise Wallet
//
//  Created by Matheus Migge on 11/01/24.
//

import SwiftUI

struct AddingNewExpenseView: View {
    
    @State private var expenseDate: Date = Date()
    @State private var expenseDescription: String = ""
    @State private var expenseValue: String = ""
    @State private var expenseCategory: String = ""
    
    let expenseCategories = ["Selecione","Mercado","Comida extra","Lazer","Gastos fixos","Parcela"]
    
    var body: some View {
        NavigationView {
            Form {
                Section("Novo gasto") {
                    TextField("Descrição", text: $expenseDescription, prompt: Text("Descrição"))
                    TextField("Valor", text: $expenseValue, prompt: Text("Valor"))
                        .keyboardType(.decimalPad)
                }
                
                Section {
                    DatePicker("Data e Hora", selection: $expenseDate, in: Date()..., displayedComponents: [.date, .hourAndMinute])

                    
                    Picker("Categoria", selection: $expenseCategory) {
                        ForEach(expenseCategories, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                }
            }
            
            .toolbar(content: {
                Button(action: {}, label: {
                    Text("OK")
                        .bold()
                })
            })
        }
    }
}

#Preview {
    AddingNewExpenseView()
}
