//
//  book.swift
//  Dictionary
//
//  Created by Rose Bailey on 10/11/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation
//Need id, title, checked in:bool

class Book {
    var id: Int
    var title: String
    var checkedIn: Bool
    
    init(id: Int , title: String, checkedIn: Bool) {
        self.id = id
        self.title = title
        self.checkedIn = checkedIn
        
    }
}

     
