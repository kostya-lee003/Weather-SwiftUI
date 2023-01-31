//
//  ContentView_ViewModel.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 29/01/23.
//

import SwiftUI
import CoreLocation

extension ContentView {
    class ViewModel: ObservableObject {
        @Published var viewDidLoad = false
        
        @Published var mainItem = CityRow.ViewModel()
        @Published var items = [CityRow.ViewModel]()
        @Published var weatherColor = WeatherColor.average
        @Published var temperature = 0
        @Published var searchText = ""
        @Published var showingAlert = false
        
        private let requestManager = RequestManager()
        private let locationManager = LocationManager()
        
        func getTemplateCities() {
            requestManager.requestMainRecommendation { [weak self] result in
                switch result {
                case .success(let response):
                    self?.mainItem = Mapper.map(item: response)
                case .failure(let error):
                    fatalError(error.localizedDescription)
                }
            }

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
                locationManager.authorisationStatusDidChange = { [weak self] in
                    self?.getMyCity()
                }
                locationManager.didUpdateLocations = { [weak self] in
                    self?.getMyCity()
                }
            }
        }
        
        func getMyCity() {
            locationManager.getMyCityThroughAuthorisation { [weak self] city in
                guard let city = city else { return }
                self?.requestManager.search(query: city) { result in
                    switch result {
                    case .success(let success):
                        let viewModel = Mapper.map(item: success)
                        DispatchQueue.main.async {
                            self?.mainItem = viewModel
                        }
                    case .failure(_):
                        self?.showingAlert = true
                    }
                }
            }
        }
    }
}
