//
//  CityRow.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 27/01/23.
//

import SwiftUI

struct CityRow: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text(viewModel.name)
                    Text(viewModel.temperature)
                }
                Text(viewModel.getConvertedDate(from: viewModel.date))
            }
            Spacer()
            Image(systemName: "doc.text.magnifyingglass").foregroundColor(.blue)
        }
    }
}

