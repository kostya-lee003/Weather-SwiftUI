//
//  WeatherDataManager.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 27/01/23.
//

import SwiftUI

public class WeatherDataManager {
    static func getColor(from t: Int) -> Color {
        if t < 10 {
            return .blue
        } else if t >= 10 && t <= 25 {
            return .orange
        } else {
            return .red
        }
    }
}
