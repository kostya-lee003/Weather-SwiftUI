//
//  MainCityHeader.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 27/01/23.
//

import SwiftUI

struct MainCityHeader: View {
    @ObservedObject var viewModel = CityRow.ViewModel()
    
    init(viewModel: CityRow.ViewModel = CityRow.ViewModel()) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            HStack {
                Text(viewModel.name)
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                Spacer()
                Text("\(viewModel.temperature)")
                    .font(.title)
                    .foregroundColor(.white)
            }
            Toggle("Show in Farenheit", isOn: $viewModel.showInTemperature)
                .foregroundColor(.white)
        }
        
    }
}
