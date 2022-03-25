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
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("Title", text: $title)
                }
            }
        }
    }
}

struct NewNote_Previews: PreviewProvider {
    static var previews: some View {
        NewNote()
    }
}
