//
//  ContentView.swift
//  Shared
//
//  Created by Salvarajah, Prajina on 2022-03-25.
//

import SwiftUI

struct ContentView: View {
    
        
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(Note(description: "Buy apples, lettuce and milk", title: "Grocery List", AddMoreDescriptions: [
            AddDescription(description: "Oranges, sambal", date: Date())
        ]))
    }
}
