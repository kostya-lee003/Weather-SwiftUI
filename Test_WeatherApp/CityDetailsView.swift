//
//  CityDetailsView.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 28/01/23.
//

import SwiftUI

struct CityDetailsView: View {
    
    var items = ["", "", "", ""]
    @State private var title = "Stuttgart"
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Text(title)
                        .font(.largeTitle.bold())
                    Spacer()
                    
                    Image("day_rain")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.blue)
                }
                Text("Today")
                    .font(.title2.weight(.medium))
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(items, id: \.self) { element in
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
    }
}
