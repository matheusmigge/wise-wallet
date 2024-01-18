//
//  AETableView.swift
//  Wise Wallet
//
//  Created by Matheus Migge on 15/01/24.
//

import SwiftUI

//struct AETableView: View {
//    
//    @State private var expenses = MockObjects.expensesMock.sorted(using: KeyPathComparator(\.date))
//    
//    @State private var sortOrder = [KeyPathComparator(\Expense.description)]
//    
//    var body: some View {
//        NavigationStack  {
//            Table(expenses, sortOrder: $sortOrder) {
//                TableColumn("Data", value: \.date) { expense in
//                    
//                    Text("\(expense.date)")
//                }
//                .width(100)
//                
//                TableColumn("Descrição", value: \.description)
//                
//                TableColumn("Valor", value: \.value) { expense in
//                    
//                    Text("\(expense.value)")
//                }
//                .width(60)
//                
//                TableColumn("Categoria", value: \.category)
//                    .width(100)
//            }
//            .padding()
//            .onChange(of: sortOrder) { newOrder in
//                
//                expenses.sort(using: newOrder)
//            }
//        }
//    }
//}

//#Preview {
//    AETableView()
//}
