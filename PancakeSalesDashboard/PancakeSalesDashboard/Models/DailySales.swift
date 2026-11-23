//
//  DailySales.swift
//  PancakeSalesDashboard
//
//  Created by Priyanshi Rawat on 23/11/26.
//

import Foundation

struct DailySales: Identifiable {
    let id = UUID()
    let day: String
    let city: String
    let sales: Int
}
