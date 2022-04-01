//
//  Note.swift
//  NotesApp
//

import Foundation

//MARK: Stored properties
class Note: Identifiable, ObservableObject {
    var id: UUID
    var title: String
    var description: String
    @Published var starred: Bool
    //MARK: Initializers

    internal init(id:UUID = UUID(), description: String, title: String, starred: Bool ) {
        self.id = id
        self.description = description
        self.title = title
        self.starred = starred
    }
}
