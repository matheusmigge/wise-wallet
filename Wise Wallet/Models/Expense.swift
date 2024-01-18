//
//  Expense.swift
//  Wise Wallet
//
//  Created by Matheus Migge on 15/01/24.
//

import Foundation

struct Expense: Identifiable, Hashable {
    var date: Date
    var description: String
    var value: Double
    var category: String
    let id: String = UUID().uuidString
    
    var signature: String {
        "\(date)\(description)\(value)\(category)\(id)"
    }
}
