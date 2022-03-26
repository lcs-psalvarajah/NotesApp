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
    @ObservedObject var createNotes: CreateNotes
    
    // Whether we are showing the add activity view or not
    @Binding var addingNote: Bool
    
    var body: some View {
        NavigationView {
            NavigationView {
                Form {
                    
                    Section (header: Text("Title")) {
                        
                        TextField("What do you want to call this note?", text: $title)
                    }
                    
                    Section (header: Text("Description")) {
                        
                        TextField("Write anything you want!", text: $description)
                    }
                    
                }
                .navigationTitle("New Note")
//                .toolbar {
//
//                    ToolbarItem(placement: ToolbarItemPlacement.primaryAction) {
                        
                        //                        Button(action: {
                        //                            print("Here is where a category gets created")
                        //                            saveCategory()
                        //                        }, label: {
                        //                            Text("Save")
                        //                        })
                        
//                    }
//                }
                
                
            }
        }
    }
}

//struct NewNote_Previews: PreviewProvider {
//    static var previews: some View {
//        NewNote()
//    }
//}
