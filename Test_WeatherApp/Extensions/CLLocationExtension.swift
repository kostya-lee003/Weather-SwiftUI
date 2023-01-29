//
//  CLLocationExtension.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 29/01/23.
//

import MapKit

extension CLLocation {
    func fetchCity(completion: @escaping (_ city: String?, _ error: Error?) -> ()) {
        CLGeocoder().reverseGeocodeLocation(self) { completion($0?.first?.locality, $1) }
    }
}
