//
//  RequestManager.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 29/01/23.
//

import Foundation
import UIKit

public class RequestManager {
    func fetchMainRecommendation(using session: URLSession = .shared, completion: @escaping (Result<CityModel, Error>) -> Void) {
        let endpoint = Endpoint.mainRecommendation
        
        session.request(endpoint) { data, response, error in
            guard let data = data, error == nil else { return }
            
            do {
                let decodedData = try JSONDecoder().decode(CityModel.self, from: data)
                print(decodedData)
                DispatchQueue.main.async {
                    completion(.success(decodedData))
                }
            } catch {
                fatalError("Error occured while decoding data")
            }
        }
    }
    
    func fetchRecommendations(using session: URLSession = .shared, completion: @escaping (Result<Response, Error>) -> Void) {
        let endpoint = Endpoint.recommendations
        
        session.request(endpoint) { data, response, error in
            guard let data = data, error == nil else { return }
            
            do {
                let decodedData = try JSONDecoder().decode(Response.self, from: data)
                print(decodedData.list)
                DispatchQueue.main.async {
                    completion(.success(decodedData))
                }
            } catch {
                fatalError("Error occured while decoding data")
            }
        }
    }
    
    func search(query: String, using session: URLSession = .shared) {
        let endpoint = Endpoint.search(query: query)
        
        session.request(endpoint) { data, response, error in
            guard let data = data, error == nil else { return }
            do {
                let decodedData = try JSONDecoder().decode(CityModel.self, from: data)
                print(decodedData)
            } catch {
                fatalError("decoding error")
            }
        }
    }
}
