//
//  PaginationResponse.swift
//  MangadexReader
//
//  Created by Lorenzo Rapetti on 05/06/21.
//

import Foundation

extension Mangadex {
    struct PaginationResponse<T: Decodable>: Decodable {
        let results: [T]
        let limit: Int
        let offset: Int
        let total: Int
    }
}
