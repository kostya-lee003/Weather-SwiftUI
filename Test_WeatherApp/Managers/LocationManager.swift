//
//  LocationManager.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 29/01/23.
//

import MapKit
import CoreLocation
import Foundation

public class LocationManager: NSObject, ObservableObject {
    
    private let locationManager = CLLocationManager()
    @Published var authorisationStatus: CLAuthorizationStatus = .notDetermined
    
    var authorisationStatusDidChange: () -> Void = {}
    var didUpdateLocations: () -> Void = {}

    override init() {
        super.init()
        self.locationManager.delegate = self
    }

    public func requestAuthorisation() {
        self.locationManager.requestWhenInUseAuthorization()
    }
    
    public func getMyCityThroughAuthorisation(completion: @escaping (_ city: String?) -> ()) {
        let isAuthorised = authorisationStatus == .authorizedWhenInUse || authorisationStatus == .authorizedAlways
        if isAuthorised {
            guard let location = locationManager.location else { return }
            getCityName(location: location) { city in
                completion(city)
            }
        } else {
            requestAuthorisation()
        }
    }
    
    public func getCityName(location: CLLocation, completion: @escaping (_ city: String?) -> ()) {
        location.fetchCity { city, error in
            if error != nil { return }
            completion(city)
        }
    }
    
    public func getCoordinates(from city: String) {}
}

extension LocationManager: CLLocationManagerDelegate {
    public func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        self.authorisationStatus = status
        self.authorisationStatusDidChange()
    }
    
    public func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        self.didUpdateLocations()
    }
}
