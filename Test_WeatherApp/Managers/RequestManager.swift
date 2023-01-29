//
//  RequestManager.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 29/01/23.
//

import Foundation

public class RequestManager {
    func fetchRecommendations(using session: URLSession = .shared) {
        let endpoint = Endpoint.recommendations
        
        session.request(endpoint) { data, response, error in
            guard let data = data, error == nil else { return }
            
            do {
                let info = try JSONDecoder().decode(Welcome.self, from: data)
                print(info.list)
            } catch {
                fatalError("decoding error")
            }
        }
    }
}
