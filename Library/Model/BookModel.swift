//
//  BookModel.swift
//  Library
//
//  Created by Zaire McAllister on 10/12/23.
//

import Foundation

struct BookModel: Identifiable, Codable {
    let id: String
    let title: String
    let author: String
    let completed: Bool
    
    init(id: String = UUID().uuidString, title: String, author: String, completed: Bool) {
        self.id = id
        self.title = title
        self.author = author
        self.completed = completed
    }
    
    func updateCompletedBook() -> BookModel {
        return BookModel(id: id, title: title, author: author, completed: !completed)
    }
    
}
