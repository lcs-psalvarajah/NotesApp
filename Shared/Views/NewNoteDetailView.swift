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
            HStack () {
                Image(systemName: note.starred ?
                      "star.fill" : "star")
                    .onTapGesture {
                        note.starred.toggle()
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


struct NewNoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewNoteDetailView(note: testData[0])
    }
}
