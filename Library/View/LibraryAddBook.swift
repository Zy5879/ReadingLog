//
//  LibraryAddBook.swift
//  Library
//
//  Created by Zaire McAllister on 10/12/23.
//

import SwiftUI

struct LibraryAddBook: View {
    @State var title: String = ""
    @State var author: String = ""

    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Title of Book", text: $title)
                    .frame(height: 55)
                    .padding(.horizontal)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                
                TextField("Name of Author", text: $author)
                    .frame(height: 55)
                    .padding(.horizontal)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                    Button(action: {
                    
                }, label: {
                    Text("Save Book")
                })
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
                    .padding(20)
            }
            .padding(20)
        }
        .navigationTitle("Add Book 📖")
    }
}

#Preview {
    NavigationStack {
        LibraryAddBook()
    }
}
