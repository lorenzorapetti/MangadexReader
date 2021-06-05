//
//  Manga.swift
//  MangadexReader
//
//  Created by Lorenzo Rapetti on 05/06/21.
//

import Foundation


extension Mangadex {
    struct Manga: Decodable, Identifiable {
        let id: String
        let type: String
        let attributes: MangaAttributes
    }
    
    struct MangaAttributes: Decodable {
        let title: [String: String]
        
        var defaultTitle: String {
            title.first?.value ?? title["en"] ?? ""
        }
    }
}
