//
//  CityRow_ViewModel.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 29/01/23.
//

import SwiftUI
import Foundation
import UIKit
import ObjectiveC

extension CityRow {
    class ViewModel: ObservableObject {
        private let serialNumber: String = UUID().uuidString
        
        @Published var name = "City"
        @Published var temperature = 0
        @Published var date = Date()
        
        @Published var showInTemperature = false
        
        private let dateManager = DateManager()
        
        init(name: String = "City", temperature: Int = 0, date: Date = Date()) {
            self.name = name
            self.temperature = temperature
            self.date = date
        }
        
        func getConvertedDate(from date: Date) -> String {
            return "Date"
        }
    }
}

// Conforming to Hashable to put CityRow_ViewModel to a list in ContentView_ViewModel
extension CityRow.ViewModel: Hashable {
    static func == (lhs: CityRow.ViewModel, rhs: CityRow.ViewModel) -> Bool {
        return lhs.name == rhs.name && lhs.date == rhs.date && lhs.temperature == rhs.temperature
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(serialNumber)
    }
}
