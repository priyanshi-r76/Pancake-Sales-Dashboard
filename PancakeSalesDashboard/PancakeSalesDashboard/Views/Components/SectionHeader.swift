//
//  SectionHeader.swift
//  PancakeSalesDashboard
//
//  Created by Priyanshi Rawat on 23/11/26.
//

import SwiftUI

struct SectionHeader: View {

    let title: String
    let subtitle: String

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.headline)
                .fontWeight(.bold)

            Text(subtitle)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
    }
}
