//
//  Note.swift
//  NotesApp
//
//  Created by Salvarajah, Prajina on 2022-03-25.
//

import Foundation

//MARK: Stored properties
class Note: Identifiable, Codable, ObservableObject {
    var id: UUID
    var title: String
    var description: String
}
