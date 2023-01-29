//
//  URLExtension.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 29/01/23.
//

import UIKit
// Example urls:
// "https://api.openweathermap.org/data/2.5/weather?appid=8c3eddfba5e69b6d3f93d2346bc6f2ff&units=metric&q="
// var URL = http://api.openweathermap.org/data/2.5/group?id=524901,703448,2643743&units;=metric&appid={API_KEY}

extension URL {
    static var mainRecommendation: URL {
        URL(string: "\(API.base)group?id=524901&units=metric&appid=\(API.key)")!
    }
    
    static var recommendations: URL {
        URL(string: "\(API.base)group?id=524901,703448,2643743&units=metric&appid=\(API.key)")!
    }
    
    static func search(city: String) -> URL {
        URL(string: "\(API.base)weather?appid=\(API.key)&units=metric&q=\(city)")!
    }
}
