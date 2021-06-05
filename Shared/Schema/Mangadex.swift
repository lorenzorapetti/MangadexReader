//
//  Mangadex.swift
//  MangadexReader
//
//  Created by Lorenzo Rapetti on 05/06/21.
//

import Foundation
import SwiftUI
import Alamofire

class Mangadex: ObservableObject {
    typealias MangaList = PaginationResponse<MangaResponse>
    
    @Published var loading = false
    @Published var mangaList: MangaList?
    
    func loadMangaList() {
        loading = true
        AF.request("https://api.mangadex.org/manga?limit=10").responseDecodable(of: MangaList.self) { response in
            print("\(response.value?.results.count ?? 0) risultati")
            DispatchQueue.main.async {
                withAnimation {
                    self.loading = false
                    self.mangaList = response.value
                }
            }
        }
    }
}
