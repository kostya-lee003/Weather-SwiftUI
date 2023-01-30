//
//  DecodingError.swift
//  Test_WeatherApp
//
//  Created by Kostya Lee on 30/01/23.
//

import Foundation

protocol ErrorDecodable: LocalizedError {
    var title: String? { get }
    var code: Int { get }
}

struct DecodingError: ErrorDecodable {

    var title: String?
    var code: Int
    var errorDescription: String? { return _description }
    var failureReason: String? { return _description }

    private var _description: String

    init(title: String?, description: String, code: Int) {
        self.title = title ?? "Decoding error"
        self._description = description
        self.code = code
    }
}
