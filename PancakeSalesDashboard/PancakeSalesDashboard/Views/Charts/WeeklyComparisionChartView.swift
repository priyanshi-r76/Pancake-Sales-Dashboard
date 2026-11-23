//
//  WeeklyComparisionChartView.swift
//  PancakeSalesDashboard
//
//  Created by Priyanshi Rawat on 23/11/26.
//

import SwiftUI
import Charts

struct WeeklyComparisonChartView: View {

    let sales = SalesData.weeklySales

    var body: some View {
        DashboardCard {
            VStack(alignment: .leading, spacing: 16) {

                SectionHeader(
                    title: "Q3. How do cities compare?",
                    subtitle: "Sales throughout the week"
                )

                Chart(sales) { item in

                    LineMark(
                        x: .value("Day", item.day),
                        y: .value("Sales", item.sales),
                        series: .value("City", item.city)
                    )
                    .foregroundStyle(by: .value("City", item.city))
                    .symbol(by: .value("City", item.city))
                    .interpolationMethod(.catmullRom)

                    PointMark(
                        x: .value("Day", item.day),
                        y: .value("Sales", item.sales)
                    )
                    .foregroundStyle(by: .value("City", item.city))
                }
                .chartForegroundStyleScale([
                    "Cupertino": Color.blue,
                    "San Francisco": Color.orange
                ])
                .frame(height: 250)
                .chartLegend(position: .bottom)
            }
        }
    }
}

#Preview {
    WeeklyComparisonChartView()
}
