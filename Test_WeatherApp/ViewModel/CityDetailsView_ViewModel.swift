//
//  CityDetailsView_ViewModel.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 29/01/23.
//

import SwiftUI

extension CityDetailsView {
    @MainActor class ViewModel: ObservableObject {
        @Published var items = ["", "", "", "", ""]
        @Published var title = "Stuttgart"
        @Published var weatherType = "day_rain"
    }
}
