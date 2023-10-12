//
//  LibraryRowView.swift
//  Library
//
//  Created by Zaire McAllister on 10/12/23.
//

import SwiftUI

struct LibraryRowView: View {
    
    let books: BookModel
 
    var body: some View {
        VStack {
            HStack {
                Image(systemName: books.completed ? "checkmark.circle" : "circle")
                    .foregroundStyle(books.completed ? .green : .red)
                Text(books.title)
                    .bold()
            }
            Text("Author: \(books.author) ")
        }
    }
}

#Preview {
    LibraryRowView(books: BookModel(title: "Percy Jackson: Sea of Theives", author: "Rick Riordan", completed: false))
}
