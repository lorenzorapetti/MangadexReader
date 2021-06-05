//
//  ContentView.swift
//  Shared
//
//  Created by Lorenzo Rapetti on 05/06/21.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    @StateObject var mangadex = Mangadex()
    
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    ForEach(mangadex.mangaList?.results ?? [], id: \.data.id) { item in
                        Text(item.data.attributes.defaultTitle)
                    }
                }
                
                if mangadex.loading {
                    ProgressView("Loading...")
                }
            }
            .navigationTitle("Mangadex Reader")
        }
        .environmentObject(mangadex)
        .onAppear(perform: mangadex.loadMangaList)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
