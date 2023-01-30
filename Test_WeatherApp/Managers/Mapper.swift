//
//  Mapper.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 30/01/23.
//

import Foundation

public class Mapper {
    // city rows
    static func map(items: [CityModel]) -> [CityRow.ViewModel] {
        var viewModels = [CityRow.ViewModel]()
        items.map { item in
            viewModels.append(
                CityRow.ViewModel(name: item.name, temperature: Int(item.main.temp), date: Date())
            )
        }
        return viewModels
    }
    
//    static func map(item: CityModel) -> CityRow.ViewModel {
//        return CityRow.ViewModel(name: item.name, temperature: Int(item.main.temp), date: Date())
//    }
    static func map(item: CityModel) -> CityRow.ViewModel {
        return CityRow.ViewModel(name: item.name, temperature: Int(item.main.temp), date: Date())
    }
}
