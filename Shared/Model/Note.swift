//
//  Note.swift
//  NotesApp
//
//  Created by Salvarajah, Prajina on 2022-03-25.
//

import Foundation

//MARK: Stored properties
class Note: Identifiable, ObservableObject {
    var id: UUID
    var title: String
    var description: String
//    @Published var AddMoreDescriptions: [AddDescription]
    
    //MARK: Initializers

    internal init(id:UUID = UUID(), description: String, title: String ) {
        self.id = id
        self.description = description
        self.title = title
//        self.AddMoreDescriptions = AddMoreDescriptions
        
    }
}


var testData = [
Note(description: "Buy apples, lettuce and milk", title: "Grocery List")
]
