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
        
        let requestManager = RequestManager()
        
        func getHourlyForecast() {
            requestManager.requestHourlyForecast(for: "Tashkent") { data in
                switch data {
                case .success(let success):
                    success.list.forEach { model in
                        print("")
                        print(model.main.temp)
                        print(model.sys.pod)
                        print(model.dtTxt)
                        print("")
                    }
                case .failure(let failure):
                    fatalError()
                }
            }
        }
    }
}
