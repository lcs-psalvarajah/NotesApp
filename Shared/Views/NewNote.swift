//
//  NewNote.swift
//  NotesApp
//


import SwiftUI

struct NewNote: View {
    
    //Details of the new note
    @State private var title = ""
    @State private var description = ""
    
    // Get a reference to the store of notes (StoredNotes)
    @ObservedObject var store: StoredNotes
    
    // Whether we are showing the add activity view or not
    @Binding var addingNote: Bool
    
    @Binding var numberOfStarredNotes: Int
    
    var body: some View {
        NavigationView {
            Form {
                TextField("What do you want to call this note?", text: $title)
                TextField("Write anything you want!", text: $description)
            }
            .navigationTitle("New Note")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Save") {
                        saveNote()                        
                    }
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        // Dismiss the sheet by adjusting the "showing"
                        // property, a derived value, which is bound
                        //to the "showingAddTask" property from
                        // ContentView, the source of truth
                        addingNote = false
                    }
                }
            }
        }
        //Prevents dismissal of the sheet by swiping down
        // If sheet is dismissed this way, data is not saved
        // Better that the user needs to press save button or cancel button
        // so we know their intent when dismissing the sheet
        .interactiveDismissDisabled()
    }
    func saveNote() {
        // Add the note to the list of notes
        store.notes.append(Note(description: description, title: title, starred: false))
        
        //Dismiss this view
        addingNote = false
    }
}
