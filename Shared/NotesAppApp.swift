//
//  NotesAppApp.swift
//  Shared
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
