//
//  NewNote.swift
//  NotesApp
//
//  Created by Salvarajah, Prajina on 2022-03-25.
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
                
                
            }
            
        }
    }
    
    func saveNote() {
        // Add the note to the list of notes
        store.notes.append(Note(description: description, title: title, starred: false))
        
        //Dismiss this view
        addingNote = false
        
        
    }
}

struct NewNote_Previews: PreviewProvider {
    static var previews: some View {
        NewNote(store: testStore, addingNote: .constant(true))
    }
}
