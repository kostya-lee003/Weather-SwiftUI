//
//  CityRow.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 27/01/23.
//

import SwiftUI

struct CityRow: View {
    @ObservedObject var viewModel: ViewModel = ViewModel()
    
    init(viewModel: ViewModel = ViewModel()) {
        self.viewModel.name = viewModel.name
        self.viewModel.temperature = viewModel.temperature
        self.viewModel.date = viewModel.date
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text(viewModel.name)
                    Text("\(viewModel.temperature)")
                }
                Text(viewModel.getConvertedDate(from: viewModel.date))
            }
            Spacer()
            Image(systemName: "doc.text.magnifyingglass").foregroundColor(.blue)
        }
    }
}

