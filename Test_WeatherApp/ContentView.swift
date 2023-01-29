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
    var items = ["Hello1", "Hello2", "Hello3", "Hello4"]
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                MainCityHeader()
                ForEach(items, id: \.self) { element in
                    NavigationLink(destination: {
                        CityDetailsView()
                            .navigationTitle("")
                    }, label: {
                        CityRow()
                    })
                }
            }
            .navigationBarTitle("Weather", displayMode: .large)
            .searchable(text: $searchText)
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("My city") {
                        print("My city")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
