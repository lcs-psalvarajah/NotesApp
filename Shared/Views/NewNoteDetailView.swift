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
            HStack {
                Text(note.title)
                Text(note.description)
            }
            
        }
    }


struct NewNoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewNoteDetailView(note: testData[0])
    }
}
