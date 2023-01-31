//
//  URLExtension.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 29/01/23.
//

import UIKit

// Example urls:

/// Search by city name
/// "https://api.openweathermap.org/data/2.5/weather?units=metric&q=London&appid={API_KEY}"

/// Request multiple cities' weather by id
/// http://api.openweathermap.org/data/2.5/group?id=524901,703448,2643743&units=metric&appid={API_KEY}

/// Request city's hourly weather
/// https://pro.openweathermap.org/data/2.5/forecast/hourly?lat=44.34&lon=10.99&appid={API_KEY}

extension URL {
    // Cupertino current weather
    static var mainRecommendation: URL {
        URL(string: "\(API.base)weather?appid=\(API.key)&units=\(API.defaultUnits)&q=\(API.mainTemplateCity)")!
    }
    
    // 3 cities: Moscow, Kyiv, London, Tashkent, New York city (current weather)
    static var recommendations: URL {
        URL(string: "\(API.base)group?id=\(API.IDs.Moscow),\(API.IDs.Kyiv),\(API.IDs.London),\(API.IDs.Tashkent)&units=\(API.defaultUnits)&appid=\(API.key)")!
    }
    
    // search by city name (current weather)
    static func search(city: String) -> URL {
        URL(string: "\(API.base)weather?appid=\(API.key)&units=\(API.defaultUnits)&q=\(city)")!
    }
    
    // hourly forecast for a provided city
    static func hourlyForecast(city: String) -> URL {
        URL(string: "api.openweathermap.org/data/2.5/forecast?lat=41.264648&lon=69.21627&appid=\(API.key)")!
    }

}
