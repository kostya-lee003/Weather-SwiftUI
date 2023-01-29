//
//  MainCityHeader.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 27/01/23.
//

import SwiftUI

struct MainCityHeader: View {
    @State private var showInTemperature = false
    @State private var temperature = 111
    @State private var weatherColor = WeatherColor.average
    
    var body: some View {
        VStack {
            HStack {
                Text("Stuttgart")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                Spacer()
                Text("31*")
                    .font(.title)
                    .foregroundColor(.white)
            }
            Toggle("Show in Farenheit", isOn: $showInTemperature)
                .foregroundColor(.white)
        }
        .listRowBackground(WeatherDataManager.getColor(from: temperature).opacity(0.75))
    }
}
