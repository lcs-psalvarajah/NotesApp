//
//  ContentView.swift
//  Shared
//

import SwiftUI

struct ContentView: View {
    
    //Controls whether the add note is showing
    @State private var showingAddNote = false
    
    //Stores all notes that are being tracked
    @ObservedObject var store: StoredNotes
    
    //Whether to show starred notes or not
    @State var showingStarredNotes = true
    
    //Whenever the numberOfStarredNots value changes it will update
    @State var numberOfStarredNotes = 0
    
    // Tracks what notes should be visible currently
    @State private var selectednumberOfNoteVisibility: numberOfNoteVisibility = .all
    
    var body: some View {
        List {
            Text("There is currently \(numberOfStarredNotes) starred notes")
            
            Picker("Filter", selection: $selectednumberOfNoteVisibility) {
                Text(numberOfNoteVisibility.all.rawValue)
                    .tag(numberOfNoteVisibility.all)
                Text(numberOfNoteVisibility.starredNote.rawValue)
                    .tag(numberOfNoteVisibility.starredNote)
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)
            
            ForEach(filter(store.notes, by: selectednumberOfNoteVisibility)) { note in
                
                if showingStarredNotes {
                    // show all notes, starred or not starred
                    NewNoteDetailView(note: note, store: store, numberOfStarredNotes: $numberOfStarredNotes)
                    
                } else {
                    // Only show starred notes
                    if note.starred == true {
                        NewNoteDetailView(note: note, store: store, numberOfStarredNotes: $numberOfStarredNotes)
                    }
                }
            }
            //             View modifier invokes the function on the view model, "store"
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
