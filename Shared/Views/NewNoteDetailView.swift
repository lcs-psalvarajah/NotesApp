//
//  NewNoteDetailView.swift
//  NotesApp
//


import SwiftUI

struct NewNoteDetailView: View {
    @ObservedObject var note: Note
    
    @StateObject private var createNote = CreateNotes()
    
    // Get a reference to the store of notes (StoredNotes)
    @ObservedObject var store: StoredNotes
    
    @Binding var numberOfStarredNotes: Int
    
    var body: some View {
        HStack () {
            Image(systemName: note.starred ?
                  "star.fill" : "star")
                .onTapGesture {
                    note.starred.toggle()
                    
                    // Whenever the note.starred is toggled  the function will be initialized
                    numberOfStarredNotes = countStarred(store.notes)
                }
            VStack{
                
                Text(note.title)
                    .multilineTextAlignment(.leading)
                    .font(.headline)
                Text(note.description)
                    .multilineTextAlignment(.center)
            }
        }
    }
}
