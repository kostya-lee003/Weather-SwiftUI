//
//  URLSessionExtension.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 29/01/23.
//

import Foundation

extension URLSession {
    typealias Handler = (Data?, URLResponse?, Error?) -> Void

    @discardableResult
    func request(
        _ endpoint: Endpoint,
        then handler: @escaping Handler
    ) -> URLSessionDataTask {
        let task = dataTask(
            with: endpoint.url,
            completionHandler: handler
        )

        task.resume()
        return task
    }
}
