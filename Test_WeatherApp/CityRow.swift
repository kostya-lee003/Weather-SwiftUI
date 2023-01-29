//
//  CityRow.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 27/01/23.
//

import SwiftUI

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

