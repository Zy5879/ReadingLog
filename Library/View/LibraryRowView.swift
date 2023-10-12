//
//  LibraryRowView.swift
//  Library
//
//  Created by Zaire McAllister on 10/12/23.
//

import SwiftUI

struct LibraryRowView: View {
    let book: String = "Percy Jackson: The Sea of Monsters"

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "checkmark.circle")
                Text(book)
            }
            Text("Author: Rick Riordan")
        }
    }
}

#Preview {
    LibraryRowView()
}
