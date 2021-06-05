//
//  MangaResponse.swift
//  MangadexReader
//
//  Created by Lorenzo Rapetti on 05/06/21.
//

import Foundation

extension Mangadex {
    struct MangaResponse: Decodable, Identifiable {
        let result: Result
        let data: Manga
        
        var id: String {
            data.id
        }
    }
}
