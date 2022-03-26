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
    @ObservedObject var NewNote: CreateNotes
    
    // Whether we are showing the add activity view or not
    @Binding var addingNote: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("Title", text: $title)
                    TextField("Description", text: $description)
                }
            }
        }
    }
    
}

//struct NewNote_Previews: PreviewProvider {
//    static var previews: some View {
//        NewNote()
//    }
//}
