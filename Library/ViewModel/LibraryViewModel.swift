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
    
    func addBook(title:String, author:String) {
        let newBook = BookModel(title: title, author: author, completed: false)
        books.append(newBook)
    }
    
    func moveBook(from: IndexSet, to: Int) {
        books.move(fromOffsets: from, toOffset: to)
    }
    
    func deleteBook(indexSet: IndexSet) {
        books.remove(atOffsets: indexSet)
    }
    
    func updateBook(book: BookModel) {
        if let index = books.firstIndex(where: {$0.id == book.id}) {
            books[index] = book.updateCompletedBook()
        }
    }
    
}
