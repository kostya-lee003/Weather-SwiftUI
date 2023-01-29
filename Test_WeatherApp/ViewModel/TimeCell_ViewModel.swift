//
//  TimeCell_ViewModel.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 29/01/23.
//

import SwiftUI

extension TimeCell {
    @MainActor class ViewModel: ObservableObject {
        private let serialNumber: String = UUID().uuidString
        
        @Published var time = "12:00"
        @Published var weatherType = "rain"
        @Published var temperature = "24*"
    }
}

// Conforming to Hashable to put TimeCell_ViewModel into a list in CityDetailsView_ViewModel
extension TimeCell.ViewModel: Hashable {
    static func == (lhs: TimeCell.ViewModel, rhs: TimeCell.ViewModel) -> Bool {
        return lhs.time == rhs.time && lhs.weatherType == rhs.weatherType && lhs.temperature == rhs.temperature
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(serialNumber)
    }
}
