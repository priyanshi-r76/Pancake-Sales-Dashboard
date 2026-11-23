
import SwiftUI

struct ContentView: View {

    @State private var selectedCity = "Cupertino"

    private var totalSales: Int {
        SalesData.pancakeSales.reduce(0) {
            $0 + $1.sales
        }
    }

    private var bestSeller: PancakeSales? {
        SalesData.pancakeSales.max {
            $0.sales < $1.sales
        }
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {

                    // Header
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Pancake Dashboard 🥞")
                            .font(.largeTitle)
                            .fontWeight(.bold)

                        Text("Sales insights from your food truck")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }

                    // Summary cards
                    HStack(spacing: 12) {
                        SummaryCard(
                            title: "Total Sold",
                            value: "\(totalSales)",
                            subtitle: "Last 30 days",
                            color: .orange
                        )

                        SummaryCard(
                            title: "Best Seller",
                            value: bestSeller?.name ?? "-",
                            subtitle: "\(bestSeller?.sales ?? 0) sold",
                            color: .purple
                        )
                    }

                    // Q1
                    PancakeSalesChartView()

                    // Q2
                    CitySalesChartView(
                        selectedCity: $selectedCity
                    )

                    // Q3
                    WeeklyComparisonChartView()
                }
                .padding()
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Sales Dashboard")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}

