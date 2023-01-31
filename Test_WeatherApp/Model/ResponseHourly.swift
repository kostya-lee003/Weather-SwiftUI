//
//  ResponseHourly.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 30/01/23.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

//struct Welcome2: Codable {
//    let list: [CityDetails2]
//    let city: City
//}
//
//struct City: Codable {
//    let id: Int
//    let name: String
//    let coord: Coordinates2
//}
//
//struct Coordinates2: Codable {
//    let lat, lon: Double
//}
//
//struct CityDetails2: Codable {
//    let dt: Int
//    let main: Main2
//    let weather: [Weather2]
//    let dtTxt: String
//
//    enum CodingKeys: String, CodingKey {
//        case dt, main, weather
//        case dtTxt = "dt_txt"
//    }
//}
//
//struct Main2: Codable {
//    let temp: Double
//}
//
//struct Weather2: Codable {
//    let main: String
//}

// MARK: - Welcome
struct Welcome: Codable {
    let cod: String
    let message, cnt: Int
    let list: [HourlyRequest]
    let city: City
}

// MARK: - City
struct City: Codable {
    let id: Int
    let name: String
    let coord: Coord
    let country: String
    let population, timezone, sunrise, sunset: Int
}

// MARK: - Coord
struct Coord: Codable {
    let lat, lon: Double
}

// MARK: - List
struct HourlyRequest: Codable {
    let dt: Int
    let main: Main
    let weather: [Weather]
    let clouds: Clouds
    let wind: Wind
    let visibility: Int
    let pop: Double
    let rain: Rain?
    let sys: Sys
    let dtTxt: String

    enum CodingKeys: String, CodingKey {
        case dt, main, weather, clouds, wind, visibility, pop, rain, sys
        case dtTxt = "dt_txt"
    }
}

// MARK: - Clouds
struct Clouds: Codable {
    let all: Int
}

// MARK: - Main
struct Main: Codable {
    let temp, feelsLike, tempMin, tempMax: Double
    let pressure, seaLevel, grndLevel, humidity: Int
    let tempKf: Double

    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case pressure
        case seaLevel = "sea_level"
        case grndLevel = "grnd_level"
        case humidity
        case tempKf = "temp_kf"
    }
}

// MARK: - Rain
struct Rain: Codable {
    let the3H: Double

    enum CodingKeys: String, CodingKey {
        case the3H = "3h"
    }
}

// MARK: - Sys
struct Sys: Codable {
    let pod: String
}

// MARK: - Weather
struct Weather: Codable {
    let id: Int
    let main, description, icon: String
}

// MARK: - Wind
struct Wind: Codable {
    let speed: Double
    let deg: Int
    let gust: Double
}
