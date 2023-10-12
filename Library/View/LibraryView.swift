//
//  LibraryView.swift
//  Library
//
//  Created by Zaire McAllister on 10/12/23.
//

import SwiftUI

struct LibraryView: View {
    
//    let books = [
//        BookModel(title: "Percy Jackson: Sea of Monsters", author: "Rick Riordan"),
//        BookModel(title: "Harry Potter: Deathly Hallows", author: "J.K. Rowling")
//    ]
    
    var body: some View {
        VStack {
            Text("Main Library")
        }
        .navigationTitle("Book Log 📚")
        .toolbar {
            ToolbarItem(placement: ToolbarItemPlacement.topBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: ToolbarItemPlacement.topBarTrailing) {
                NavigationLink("Add Book", destination: LibraryAddBook())
            }
        }
    }
}

#Preview {
    NavigationStack {
        LibraryView()
    }
}
