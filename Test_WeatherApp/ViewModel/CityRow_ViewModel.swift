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
    @MainActor class ViewModel: ObservableObject {
        private let serialNumber: String = UUID().uuidString
        
        @Published var name = "City"
        @Published var temperature = "34*"
        @Published var date = Date()
        
        private let dateManager = DateManager()
        
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
