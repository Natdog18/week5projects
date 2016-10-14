//
//  person.swift
//  zoo
//
//  Created by Rose Bailey on 10/11/16.
//  Copyright © 2016 Interapt. All rights reserved.




import Foundation
class People{
    
    
        var id: Int
        var name: String
        var checkedIn: Bool
        var employee: Bool
    
    
        
        init(id: Int , name: String, checkedIn: Bool,employee: Bool) {
            self.id = id
            self.name = name
            self.checkedIn = checkedIn
            self.employee = employee
        }
    }
    


