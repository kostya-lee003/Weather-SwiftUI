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

struct MainCityHeader: View {
    @State private var showInTemperature = false
    @State private var temperature = 111
    @State private var weatherColor = WeatherColor.average
    
    var body: some View {
        VStack {
            HStack {
                Text("Stuttgart")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                Spacer()
                Text("31*")
                    .font(.title)
                    .foregroundColor(.white)
            }
            Toggle("Show in Farenheit", isOn: $showInTemperature)
                .foregroundColor(.white)
        }
        .listRowBackground(WeatherDataManager.getColor(from: temperature).opacity(0.75))
    }
}

struct CityRow: View {
    var name = ""
    var temperature = 0
    var date = Date()
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("Name")
                    Text("Temperature")
                }
                Text("Date")
            }
            Spacer()
            Button {
                print("")
            } label: {
                Image(systemName: "doc.text.magnifyingglass").foregroundColor(.blue)
            }
        }
    }
}

struct ContentView: View {
    var items = ["Hello", "Hello", "Hello", "Hello"]
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                MainCityHeader()
                ForEach(items, id: \.self) { element in
                    CityRow()
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
