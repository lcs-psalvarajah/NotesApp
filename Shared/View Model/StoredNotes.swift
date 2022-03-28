//
//  StoredNotes.swift
//  NotesApp
//
//  Created by Salvarajah, Prajina on 2022-03-26.
//

import Foundation

class StoredNotes: ObservableObject {
    @Published var notes: [Note]
    
    init(notes: [Note] = []) {
        self.notes = notes
    }
}
let testStore = StoredNotes(notes: testData)
