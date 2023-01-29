//
//  ContentView_ViewModel.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 29/01/23.
//

import SwiftUI

extension ContentView {
    @MainActor class ViewModel: ObservableObject {
        @Published var items = [CityRow.ViewModel]()
        @Published var weatherColor = WeatherColor.average
        @Published var temperature = 111
        @Published var searchText = ""
        
        private let requestManager = RequestManager()
        
        func getTemplateCities() -> [String] {
            []
        }
    }
}
