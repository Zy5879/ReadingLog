//
//  LibraryApp.swift
//  Library
//
//  Created by Zaire McAllister on 10/12/23.
//

import SwiftUI

@main
struct LibraryApp: App {
    @StateObject var bookViewModel: LibraryViewModel = LibraryViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                LibraryView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(bookViewModel)
        }
    }
}
