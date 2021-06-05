//
//  Enums.swift
//  MangadexReader
//
//  Created by Lorenzo Rapetti on 05/06/21.
//

import Foundation

extension Mangadex {
    enum Result: String, Decodable {
        case ok = "ok"
        case error = "error"
    }
}
