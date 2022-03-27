//
//  NewNoteDetailView.swift
//  NotesApp
//
//  Created by Salvarajah, Prajina on 2022-03-27.
//

import SwiftUI

struct NewNoteDetailView: View {
    @ObservedObject var note: Note
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct NewNoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewNoteDetailView()
    }
}
