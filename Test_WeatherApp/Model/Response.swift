//
//  Response.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 30/01/23.
//

import Foundation

// docs here: https://web.archive.org/web/20210122004654/https://openweathermap.org/current#severalid
struct Response: Codable {
    let list: [CityModel]
}

struct CityModel: Codable {
    let coord: Coordinates
    let weather: [ClimateDetails]
    let main: Climate
    let id: Int
    let name: String
}

struct Coordinates: Codable {
    let lon, lat: Double
}

struct Climate: Codable {
    let temp: Double
}

struct ClimateDetails: Codable {
    let id: Int
    let main: String
}
