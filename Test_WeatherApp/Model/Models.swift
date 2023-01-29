//
//  Models.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 29/01/23.
//

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let cnt: Int
    let list: [Details]
}

// MARK: - List
struct Details: Codable {
    let coord: Coord
    let sys: Sys
    let weather: [Weather]
    let main: Main
    let id: Int
    let name: String
}

// MARK: - Coord
struct Coord: Codable {
    let lon, lat: Double
}

// MARK: - Main
struct Main: Codable {
    let temp: Double
}

// MARK: - Sys
struct Sys: Codable {
    let country: String
    let timezone: Int
}

// MARK: - Weather
struct Weather: Codable {
    let id: Int
    let main, description: String
}
