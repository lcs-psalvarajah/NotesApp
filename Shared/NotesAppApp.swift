//
//  NotesAppApp.swift
//  Shared
//
//  Created by Salvarajah, Prajina on 2022-03-25.
//

import SwiftUI

@main
struct NotesAppApp: App {
    
    @StateObject private var store = StoredNotes()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(store: store)
            }
        }
    }
}
