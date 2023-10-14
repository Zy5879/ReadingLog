//
//  LibraryViewModel.swift
//  Library
//
//  Created by Zaire McAllister on 10/12/23.
//

import Foundation

class LibraryViewModel: ObservableObject {
    @Published var books: Array<BookModel> = [] {
        didSet {
            savedLibraryItems()
        }
    }
    
    let libraryKey: String = "library_key"
    
    init() {
       getItems()
    }
    
    func getItems() {
        guard
            let data = UserDefaults.standard.data(forKey: libraryKey),
            let savedBooks = try? JSONDecoder().decode(Array<BookModel>.self, from: data)
        else {return}
        
        self.books = savedBooks
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
    
    func savedLibraryItems() {
        if let encoded = try? JSONEncoder().encode(books) {
            UserDefaults.standard.setValue(encoded, forKey: libraryKey)
        }
    }
    
}
