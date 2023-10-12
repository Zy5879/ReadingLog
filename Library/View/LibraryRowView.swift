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
                Image(systemName: "checkmark.circle")
                Text(books.title)
            }
            Text(books.author)
        }
    }
}

#Preview {
    LibraryRowView(books: BookModel(title: "Percy Jackson: Sea of Theives", author: "Rick Riordan"))
}
