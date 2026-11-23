//
//  SalesData.swift
//  PancakeSalesDashboard
//
//  Created by Priyanshi Rawat on 23/11/26.
//

import SwiftUI

enum SalesData {

    static let pancakeSales: [PancakeSales] = [
        PancakeSales(name: "Chachapa", sales: 916, color: .orange),
        PancakeSales(name: "Injera", sales: 850, color: .green),
        PancakeSales(name: "Crepe", sales: 753, color: .purple),
        PancakeSales(name: "Jian Bing", sales: 802, color: .blue),
        PancakeSales(name: "Dosa", sales: 618, color: .cyan),
        PancakeSales(name: "American", sales: 654, color: .pink)
    ]

    static let weeklySales: [DailySales] = [

        // Cupertino
        DailySales(day: "Mon", city: "Cupertino", sales: 120),
        DailySales(day: "Tue", city: "Cupertino", sales: 150),
        DailySales(day: "Wed", city: "Cupertino", sales: 180),
        DailySales(day: "Thu", city: "Cupertino", sales: 140),
        DailySales(day: "Fri", city: "Cupertino", sales: 220),
        DailySales(day: "Sat", city: "Cupertino", sales: 280),
        DailySales(day: "Sun", city: "Cupertino", sales: 240),

        // San Francisco
        DailySales(day: "Mon", city: "San Francisco", sales: 160),
        DailySales(day: "Tue", city: "San Francisco", sales: 140),
        DailySales(day: "Wed", city: "San Francisco", sales: 210),
        DailySales(day: "Thu", city: "San Francisco", sales: 190),
        DailySales(day: "Fri", city: "San Francisco", sales: 250),
        DailySales(day: "Sat", city: "San Francisco", sales: 310),
        DailySales(day: "Sun", city: "San Francisco", sales: 290)
    ]
}
