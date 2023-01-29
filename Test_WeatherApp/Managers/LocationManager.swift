//
//  LocationManager.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 29/01/23.
//

import MapKit
import Foundation

public class LocationManager {
    public func getMyLocation() -> String {
        "My city"
    }
    
    public func getMyLocation() -> CLLocation {
        CLLocation(latitude: 0.0, longitude: 0.0)
    }
    
    public func getCityName(lat: CGFloat, lon: CGFloat) {
        
    }
    
    public func getCoordinates(from city: String) {
        
    }
    
    public func getTemplateCities() -> [String] {
        []
    }
}
