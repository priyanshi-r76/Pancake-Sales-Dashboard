//
//  PancakeSalesChartView.swift
//  PancakeSalesDashboard
//
//  Created by Priyanshi Rawat on 23/11/26.
//

import SwiftUI
import Charts

struct PancakeSalesChartView: View {

    let sales = SalesData.pancakeSales

    var body: some View {
        DashboardCard {
            VStack(alignment: .leading, spacing: 16) {

                SectionHeader(
                    title: "Q1. Which pancake sold the most?",
                    subtitle: "Sales in the last 30 days"
                )

                Chart(sales) { pancake in
                    BarMark(
                        x: .value("Pancake", pancake.name),
                        y: .value("Sales", pancake.sales)
                    )
                    .foregroundStyle(pancake.color.gradient)
                    .cornerRadius(6)
                    .annotation(position: .top) {
                        Text("\(pancake.sales)")
                            .font(.caption2.bold())
                            .foregroundStyle(.secondary)
                    }
                }
                .frame(height: 250)
                .chartYAxis {
                    AxisMarks(position: .leading)
                }
            }
        }
    }
}

#Preview {
    PancakeSalesChartView()
}
