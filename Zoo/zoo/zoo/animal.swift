//
//  animal.swift
//  zoo
//
//  Created by Rose Bailey on 10/11/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class Animal {
    var id: Int
    var kind: String
    var checkedIn: Bool
    var attraction: String

    
    init(id: Int , kind: String, checkedIn: Bool, attraction: String) {
        self.id = id
        self.kind = kind
        self.checkedIn = checkedIn
        self.attraction = attraction
    
    }
}


    



