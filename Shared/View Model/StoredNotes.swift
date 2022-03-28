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
    
    //MARK: Functions
    func deleteItems(at offsets: IndexSet) {
        // "offsets" contain a set of items elescted for deletion
        // The set is then passed to the built-in "remove" method on
        // the "tasks" array which handles removal from the array
        notes.remove(atOffsets: offsets)
    }
    
    //Invoked to move items around in the list
    func moveItems(from source: IndexSet, to destination: Int) {
        // "source" again contains a set of item(s) being moved
        // "destination" is the loction the items are being moved to in the list
        // These arguements are automatically populated for us by the
        // .onMove vie modifier provided by the swiftUi framework
        notes.move(fromOffsets: source, toOffset: destination)
    }
}
let testStore = StoredNotes(notes: testData)
