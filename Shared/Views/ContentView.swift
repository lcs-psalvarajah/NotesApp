//
//  ContentView.swift
//  Shared
//
//  Created by Salvarajah, Prajina on 2022-03-25.
//

import SwiftUI

struct ContentView: View {
    //    //Stores all notes that are being tracked
    //    @ObservedObject var store: StoredNotes
    //
    //Controls whether the add note is showing
    @State private var showingAddNote = false
    
    @ObservedObject var store: StoredNotes
    
    //    @StateObject private var createNote = CreateNotes()
    
    
    var body: some View {
        List(store.notes) { note in
            NewNoteDetailView(note: note)
            
        }
        .navigationTitle("Notes")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(store: testStore)
        }
    }
}
