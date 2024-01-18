//
//  MockObjects.swift
//  Wise Wallet
//
//  Created by Matheus Migge on 15/01/24.
//

import Foundation

struct MockObjects {
    
    static let expensesMock: [Expense] = [
        
        Expense(date: createDate(year: 2023, month: 3, day: 15, hour: 10, minute: 45), description: "Compra de mantimentos", value: 50.0, category: "Mercado"),
        Expense(date: createDate(year: 2023, month: 3, day: 15, hour: 14, minute: 30), description: "Recarga de celular", value: 20.0, category: "Outros"),
        Expense(date: createDate(year: 2023, month: 3, day: 15, hour: 8, minute: 15), description: "Gasolina", value: 80.0, category: "Transporte"),
        Expense(date: createDate(year: 2023, month: 3, day: 15, hour: 21, minute: 0), description: "Jantar fora", value: 60.0, category: "Comida extra"),
        Expense(date: createDate(year: 2023, month: 3, day: 15, hour: 19, minute: 45), description: "Conta de luz", value: 40.0, category: "Gastos fixos"),

        Expense(date: createDate(year: 2023, month: 3, day: 14, hour: 12, minute: 15), description: "Compra de eletrônicos", value: 120.0, category: "Compras"),
        Expense(date: createDate(year: 2023, month: 3, day: 14, hour: 17, minute: 45), description: "Assinatura de streaming", value: 15.0, category: "Gastos fixos"),
        Expense(date: createDate(year: 2023, month: 3, day: 14, hour: 9, minute: 30), description: "Café da manhã", value: 10.0, category: "Comida extra"),
        Expense(date: createDate(year: 2023, month: 3, day: 14, hour: 20, minute: 30), description: "Compras online", value: 90.0, category: "Compras"),
        Expense(date: createDate(year: 2023, month: 3, day: 14, hour: 16, minute: 0), description: "Assinatura de revista", value: 25.0, category: "Gastos fixos"),

        Expense(date: createDate(year: 2023, month: 3, day: 16, hour: 12, minute: 30), description: "Compra de mantimentos", value: 50.0, category: "Mercado"),
        Expense(date: createDate(year: 2023, month: 3, day: 16, hour: 15, minute: 45), description: "Recarga de celular", value: 20.0, category: "Outros"),
        Expense(date: createDate(year: 2023, month: 3, day: 16, hour: 9, minute: 0), description: "Gasolina", value: 80.0, category: "Transporte"),
        Expense(date: createDate(year: 2023, month: 3, day: 16, hour: 19, minute: 30), description: "Jantar fora", value: 60.0, category: "Comida extra"),
        Expense(date: createDate(year: 2023, month: 3, day: 16, hour: 18, minute: 15), description: "Conta de luz", value: 40.0, category: "Gastos fixos")
    ]
}

private func createDate(year: Int, month: Int, day: Int, hour: Int, minute: Int) -> Date {
    var components = DateComponents()
    components.year = year
    components.month = month
    components.day = day
    components.hour = hour
    components.minute = minute
    
    let calendar = Calendar.current
    return calendar.date(from: components) ?? Date()
}


