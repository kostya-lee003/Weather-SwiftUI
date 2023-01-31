//
//  ContentView_ViewModel.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 29/01/23.
//

import SwiftUI

extension ContentView {
    class ViewModel: ObservableObject {
        @Published var viewDidLoad = false
        
        @Published var mainItem = CityRow.ViewModel()
        @Published var items = [CityRow.ViewModel]()
        @Published var weatherColor = WeatherColor.average
        @Published var temperature = 0
        @Published var searchText = ""
        
        private let requestManager = RequestManager()
        
        func getTemplateCities() {
            requestManager.requestMainRecommendation { [weak self] result in
                switch result {
                case .success(let response):
                    self?.mainItem = Mapper.map(item: response)
                case .failure(let error):
                    fatalError(error.localizedDescription)
                }
            }
//
            requestManager.requestRecommendations { [weak self] result in
                switch result {
                case .success(let success):
                    self?.items = Mapper.map(items: success.list)
                case .failure(let error):
                    fatalError(error.localizedDescription)
                }
            }
        }
        
        func setInitialItems() {
            if viewDidLoad == false {
                viewDidLoad = true
                getTemplateCities()
            }
        }
    }
}
