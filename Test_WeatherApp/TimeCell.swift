//
//  TimeCell.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 28/01/23.
//

import SwiftUI

struct TimeCell: View {
    @State private var time = "12:00"
    @State private var weatherType = ""
    @State private var temperature = "24*"
    var body: some View {
        VStack {
            Text(time)
                .font(.callout)
                .padding(.vertical, 18)
                .padding(.horizontal, 14)
                .foregroundColor(Color(.darkGray))
            Image("rain")
                .resizable()
                .frame(width: 45, height: 45)
            Text(temperature)
                .font(.title2)
                .padding(.vertical, 18)
                .foregroundColor(Color(.darkGray))
        }
        .background(
            RoundedRectangle(cornerRadius: 10.0, style: .continuous).fill(Color(.systemGray6))
        )
    }
}
