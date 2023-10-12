//
//  BookModel.swift
//  Library
//
//  Created by Zaire McAllister on 10/12/23.
//

import Foundation

struct BookModel: Identifiable {
    let id: String
    let title: String
    let author: String
    
    init(id: String = UUID().uuidString, title: String, author: String) {
        self.id = id
        self.title = title
        self.author = author
    }
}
