//
//  CitySalesChartView.swift
//  PancakeSalesDashboard
//
//  Created by Priyanshi Rawat on 23/11/26.
//

import SwiftUI
import Charts

struct CitySalesChartView: View {

    @Binding var selectedCity: String

    private var filteredSales: [DailySales] {
        SalesData.weeklySales.filter {
            $0.city == selectedCity
        }
    }

    var body: some View {
        DashboardCard {
            VStack(alignment: .leading, spacing: 16) {

                SectionHeader(
                    title: "Q2. Where should the truck go?",
                    subtitle: "Select a city to view daily sales"
                )

                Picker("City", selection: $selectedCity) {
                    Text("Cupertino").tag("Cupertino")
                    Text("San Francisco").tag("San Francisco")
                }
                .pickerStyle(.segmented)

                Chart(filteredSales) { item in
                    BarMark(
                        x: .value("Day", item.day),
                        y: .value("Sales", item.sales)
                    )
                    .foregroundStyle(
                        selectedCity == "Cupertino"
                        ? Color.blue.gradient
                        : Color.orange.gradient
                    )
                    .cornerRadius(6)
                    .annotation(position: .top) {
                        Text("\(item.sales)")
                            .font(.caption2)
                            .foregroundStyle(.secondary)
                    }
                }
                .frame(height: 220)
                .animation(.easeInOut(duration: 0.5), value: selectedCity)
            }
        }
    }
}

#Preview {
    CitySalesChartView(selectedCity: .constant("Cupertino"))
}
