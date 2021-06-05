//
//  MangadexReaderApp.swift
//  Shared
//
//  Created by Lorenzo Rapetti on 05/06/21.
//

import SwiftUI

@main
struct MangadexReaderApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
