//
//  LibraryViewModel.swift
//  Library
//
//  Created by Zaire McAllister on 10/12/23.
//

import Foundation

class LibraryViewModel: ObservableObject {
    @Published var books: Array<BookModel> = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newBooks = [
            BookModel(title: "Percy Jackson: Sea of Monsters", author: "Rick Riordan", completed: false),
            BookModel(title: "Harry Potter: Deathly Hallows", author: "J.K. Rowling", completed: true)
        ]
        
        books.append(contentsOf: newBooks)
    }
    
}
