//
//  CreateNotes.swift
//  NotesApp
//


import Foundation

class CreateNotes: ObservableObject {
    //Empty list of all the notes created
    @Published var defined: [Note] = []
}
