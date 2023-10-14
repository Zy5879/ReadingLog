//
//  LibraryView.swift
//  Library
//
//  Created by Zaire McAllister on 10/12/23.
//

import SwiftUI

struct LibraryView: View {
    
    @EnvironmentObject var bookViewModel: LibraryViewModel
    
//    let books = [
//        BookModel(title: "Percy Jackson: Sea of Monsters", author: "Rick Riordan", completed: false),
//        BookModel(title: "Harry Potter: Deathly Hallows", author: "J.K. Rowling", completed: true)
//    ]
    
    var body: some View {
        ZStack {
            if bookViewModel.books.isEmpty {
                NoLibraryView()
            } else {
                List {
                    ForEach(bookViewModel.books) {book in
                        LibraryRowView(books: book)
                            .onTapGesture {
                                withAnimation(.linear) {
                                    bookViewModel.updateBook(book: book)
                                }
                            }
                    }
                    .onMove(perform: bookViewModel.moveBook)
                    .onDelete(perform: bookViewModel.deleteBook)
                    
                }
            }

        }
        .listStyle(PlainListStyle())
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
    .environmentObject(LibraryViewModel())
}
