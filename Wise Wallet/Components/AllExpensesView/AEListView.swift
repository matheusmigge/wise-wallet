//
//  AEListView.swift
//  Wise Wallet
//
//  Created by Matheus Migge on 16/01/24.
//

import SwiftUI

struct AEListView: View {
    
    @State private var expenses = MockObjects.expensesMock.sorted(by: { $0.date > $1.date })
    
    private var AllExpensesListItemWidth: Double = 70
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy HH:mm"
        return formatter
    }()
    
    var body: some View {
        
        List {
            ForEach(expenseSections, id: \.0) { section in
                Section(header: Text(section.0)) {
                    ForEach(section.1) { expense in
                        HStack {
                            VStack {
                                Text("\(expense.date, formatter: dateFormatter)")
                                    .multilineTextAlignment(.center)
                                    .font(.caption2)
                                    .frame(width: AllExpensesListItemWidth)
                            }
                            
                            Spacer()
                            
                            VStack {
                                Text("\(expense.description)")
                                    .multilineTextAlignment(.center)
                                    .font(.caption2)
                                    .frame(width: AllExpensesListItemWidth)
                            }
                            
                            Spacer()
                            
                            VStack {
                                Text("\(expense.value.formatted())")
                                    .multilineTextAlignment(.center)
                                    .font(.caption2)
                                    .frame(width: AllExpensesListItemWidth)
                            }
                            
                            Spacer()
                            
                            VStack {
                                Text("\(expense.category)")
                                    .multilineTextAlignment(.center)
                                    .font(.caption2)
                                    .frame(width: AllExpensesListItemWidth)
                            }
                        }
                    }
                }
            }
        }
    }
    
    private var expenseSections: [(String, [Expense])] {
        let groupedExpenses = Dictionary(grouping: expenses) { expense in
            let dateComponents = Calendar.current.dateComponents([.year, .month, .day], from: expense.date)
            let dateWithoutTime = Calendar.current.date(from: dateComponents) ?? expense.date
            return dateFormatter.string(from: dateWithoutTime)
        }
        return groupedExpenses.map { key, value in
            (key.components(separatedBy: " ")[0], value)
        }.sorted { $0.0 > $1.0 }
    }


}

struct AEListView_Previews: PreviewProvider {
    static var previews: some View {
        AEListView()
    }
}
