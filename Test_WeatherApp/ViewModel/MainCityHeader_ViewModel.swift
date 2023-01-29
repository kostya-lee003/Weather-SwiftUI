//
//  MainCityHeader_ViewModel.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 29/01/23.
//

import SwiftUI

extension MainCityHeader {
    @MainActor class ViewModel: ObservableObject {
        @Published var showInTemperature = false
        @Published var cityName = "Stuttgart"
        @Published var temperature = "31*"
    }
}
