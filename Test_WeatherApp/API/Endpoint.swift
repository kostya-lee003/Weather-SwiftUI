//
//  Endpoint.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 29/01/23.
//

import Foundation

enum Endpoint {
    case mainRecommendation
    case recommendations
    case search(query: String)
    case hourlyForecast(query: String)
}

extension Endpoint {
    var url: URL {
        switch self {
        case .mainRecommendation:
            return .mainRecommendation
        case .recommendations:
            return .recommendations
        case .search(let query):
            return .search(city: query)
        case .hourlyForecast(let query):
            return .hourlyForecast(city: query)
        }
    }
}
