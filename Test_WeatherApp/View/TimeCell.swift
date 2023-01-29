//
//  TimeCell.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 28/01/23.
//

import SwiftUI

struct TimeCell: View {
    @StateObject private var viewModel = ViewModel()
    var body: some View {
        VStack {
            Text(viewModel.time)
                .font(.callout)
                .padding(.vertical, 18)
                .padding(.horizontal, 14)
                .foregroundColor(Color(.darkGray))
            Image(viewModel.weatherType)
                .resizable()
                .frame(width: 45, height: 45)
            Text(viewModel.temperature)
                .font(.title2)
                .padding(.vertical, 18)
                .foregroundColor(Color(.darkGray))
        }
        .background(
            RoundedRectangle(cornerRadius: 10.0, style: .continuous).fill(Color(.systemGray6))
        )
    }
}
