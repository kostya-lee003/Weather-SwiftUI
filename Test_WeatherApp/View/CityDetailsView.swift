//
//  CityDetailsView.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 28/01/23.
//

import SwiftUI

struct CityDetailsView: View {
    
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Text(viewModel.title)
                        .font(.largeTitle.bold())
                    Spacer()
                    
                    Image(viewModel.weatherType)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.blue)
                }
                Text("Today")
                    .font(.title2.weight(.medium))
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(viewModel.items, id: \.self) { element in
                            TimeCell()
                                .padding(.trailing, 10)
                        }
                    }
                }
                Spacer()
            }
            .padding()
            .navigationBarHidden(true)
            .navigationBarTitleDisplayMode(.inline)
        }
        .onAppear {
            viewModel.getHourlyForecast()
        }
    }
}
