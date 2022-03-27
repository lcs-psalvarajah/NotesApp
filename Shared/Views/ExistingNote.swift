//
//  ExistingNote.swift
//  NotesApp
//
//  Created by Salvarajah, Prajina on 2022-03-27.
//

import SwiftUI

struct ExistingNote: View {
    @ObservedObject var noteTitle: Note
    var body: some View {
        List(noteTitle.AddMoreDescriptions) { addMoreDescriptions in
            HStack() {
                VStack {
                    Text(addMoreDescriptions.description)
                        .multilineTextAlignment(.center)
                }
            }
        }
    }
}

struct ExistingNote_Previews: PreviewProvider {
    static var previews: some View {
        ExistingNote(noteTitle: Note(description: "i am cool", title: "who am i"))
    }
}
