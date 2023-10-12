//
//  LibraryView.swift
//  Library
//
//  Created by Zaire McAllister on 10/12/23.
//

import SwiftUI

struct LibraryView: View {
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
