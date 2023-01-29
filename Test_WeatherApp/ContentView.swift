//
//  ContentView.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 27/01/23.
//

import SwiftUI

public enum WeatherColor: String {
    case cold = "cold"
    case average = "average"
    case hot = "hot"
}

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ZStack {
                    MainCityHeader()
                    NavigationLink(destination: CityDetailsView()) {
                        EmptyView()
                    }
                    .buttonStyle(.plain)
                    .frame(width: 0)
                    .opacity(0)
                }
                .listRowBackground(WeatherDataManager.getColor(from: viewModel.temperature).opacity(0.75))
                
                ForEach(viewModel.items, id: \.self) { element in
                    NavigationLink(destination: {
                        CityDetailsView()
                            .navigationTitle("")
                    }, label: {
                        CityRow()
                    })
                }
            }
            .navigationBarTitle("Weather", displayMode: .large)
            .searchable(text: $viewModel.searchText)
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("My city") {
                        print("My city")
                    }
                }
            }
        }
        .onAppear {
            let requestManager = RequestManager()
            requestManager.fetchRecommendations()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
