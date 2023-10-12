//
//  LibraryRowView.swift
//  Library
//
//  Created by Zaire McAllister on 10/12/23.
//

import SwiftUI

struct LibraryRowView: View {
    let books: Array<String> = ["Harry Potter", "Percy Jackson"]

    var body: some View {
        List {
            ForEach(books, id: \.self) { book in
                Text(book)
            }
        }
    }
}

#Preview {
    LibraryRowView()
}
