//
//  API.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 29/01/23.
//

import Foundation

public struct API {
    static let base = "https://api.openweathermap.org/data/2.5/"
    static let key = "8c3eddfba5e69b6d3f93d2346bc6f2ff"
    static let defaultUnits = "metric"
    static let mainTemplateCity = "Cupertino"
    
    struct IDs {
        static let Moscow = "524901"
        static let Kyiv = "703448"
        static let London = "2643743"
        static let Tashkent = "1512569"
    }
}
