//
//  NewNoteDetailView.swift
//  NotesApp
//
//  Created by Salvarajah, Prajina on 2022-03-27.
//

import SwiftUI

struct NewNoteDetailView: View {
    @ObservedObject var note: Note
    @StateObject private var createNote = CreateNotes()
    
    var body: some View {
        ForEach(createNote.defined) { currentNote in
            HStack {
                VStack (alignment:.leading){
                    NavigationLink(currentNote.title,
                                   destination: ExistingNote(noteTitle:
                                                                currentNote))
                }
            }
            
        }
    }
}

struct NewNoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewNoteDetailView(note: testData[0])
    }
}
