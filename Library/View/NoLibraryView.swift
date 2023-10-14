//
//  NoLibraryView.swift
//  Library
//
//  Created by Zaire McAllister on 10/13/23.
//

import SwiftUI

struct NoLibraryView: View {
    var body: some View {
        ScrollView {
            VStack() {
                Text("Let's Get Reading 🤓")
                    .font(.title2)
                    .bold()
                NavigationLink(destination: LibraryAddBook(), label: {
                    Text("Add A Book")
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.vertical, 10)
                })
                .padding(.horizontal)
            }
            .frame(maxWidth: 400)
            .padding(40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }

}

#Preview {
    NavigationStack {
        NoLibraryView()
            .navigationTitle("Dummy Text")
    }
}
