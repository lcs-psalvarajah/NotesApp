//
//  ContentView.swift
//  Shared
//
//  Created by Salvarajah, Prajina on 2022-03-25.
//

import SwiftUI

struct ContentView: View {
    
    //Controls whether the add note is showing
    @State private var showingAddNote = false
    
    //Stores all notes that are being tracked
    @ObservedObject var store: StoredNotes
    
    //Whether to show starred notes or not
    @State var showingStarredNotes = true
    
    
    var body: some View {
        List {
            
            ForEach(store.notes) { note in
                
                if showingStarredNotes {
                    // show all notes, starred or not starred
                    NewNoteDetailView(note: note)
                    
                } else {
                    // Only show starred notes
                    if note.starred == true {
                        NewNoteDetailView(note: note)
                        
                    }
                }
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
            ToolbarItem(placement: .bottomBar) {
                // Allow user to toggle visibility of tasks based on their completion status
                //
                // CONDITION TO EVALUATE          WHEN TRUE                 WHEN FALSE
                Button(showingStarredNotes ? "Hide non-starred notes" : "Show all notes") {
                    print("Value of showingStarredNotes was: \(showingStarredNotes) ")
                    showingStarredNotes.toggle()
                    print("Value of showingStarredNotes now: \(showingStarredNotes) ")
                }
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
