//
//  MainCityHeader.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 27/01/23.
//

import SwiftUI

struct MainCityHeader: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Text(viewModel.cityName)
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                Spacer()
                Text(viewModel.temperature)
                    .font(.title)
                    .foregroundColor(.white)
            }
            Toggle("Show in Farenheit", isOn: $viewModel.showInTemperature)
                .foregroundColor(.white)
        }
        
    }
}
