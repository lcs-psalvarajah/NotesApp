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
        List {
        
        ForEach(store.notes) { note in
            NewNoteDetailView(note: note)
            
        }
            // View modifier invokes the function on the view model, "store"
            .onDelete(perform: store.deleteItems)
            .onMove(perform: store.moveItems)
        }
        .navigationTitle("Notes")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button("Add") {
                    showingAddNote = true
                }
            }
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
        }
        .sheet(isPresented: $showingAddNote) {
            NewNote(store:store, addingNote: $showingAddNote)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(store: testStore)
        }
    }
}
