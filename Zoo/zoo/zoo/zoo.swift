//
//  zoo.swift
//  zoo
//
//  Created by Rose Bailey on 10/11/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class Zoo{
    var namesOfAnimals:[Int: Animal] = [:]
    var namesOfPerson:[Int: People] = [:]
    
    init() {
        populateAnimals()
        populatePerson()
    }
    
    func getTitleById(id: Int) -> String {
        
        let animal: Animal? = namesOfAnimals[id]
        
        return animal?.kind ?? "Not Found"
    }
    
    func printAnimals() {
        for (key, value) in namesOfAnimals {
            print("ID: \(key) Name of Animal: \(value.kind)")
        }
    }
    
    func printPerson() {
        for (key, value) in namesOfPerson {
            print("ID: \(key) Name of Person: \(value.name)")
        }
    }
    
    func printAll() {
        printAnimals()
        printPerson()
    }
    
    
    
    
    func populateAnimals() {
        var animal: Animal
        
        animal = Animal(id: 1, kind: "Snakes", checkedIn: true, attraction: "Cage1")
        namesOfAnimals[1] = animal
        
        animal = Animal(id: 2, kind: "Birds", checkedIn: true, attraction: "Cage2")
        namesOfAnimals[2] = animal
        
        animal = Animal(id: 3, kind: "Spiders", checkedIn: true, attraction: "Cage3")
        namesOfAnimals[3] = animal
        
        animal = Animal(id: 4, kind: "Tigers", checkedIn: true, attraction: "Cage4")
        namesOfAnimals[4] = animal
        
        animal = Animal(id: 5, kind: "Monkey", checkedIn: true, attraction: "Cage5")
        namesOfAnimals[5] = animal
        
        
    }
    
    
    
    func populatePerson(){
         var people: People
        
        people =  People(id: 123, name: "John Doe", checkedIn: true, employee: true)
        namesOfPerson[1] = people
        
        people =  People(id: 456, name: "Jane Doe", checkedIn: false , employee: false)
        namesOfPerson[2] = people
        
        people =  People(id: 789, name: "Jack Johnson", checkedIn: true, employee: true)
        namesOfPerson[3] = people
    }
    
    
   
    
    func checkIn(id:Int) -> String {
        if let name = namesOfAnimals[id] {
            name.checkedIn = true
            return "Success"
        } else {
            return "Failure"
        }
    }
    
    func startCheckOut() {
        
    }
    
    func checkOut(id:Int) -> String {
        if let name = namesOfAnimals[id] {
            name.checkedIn = false
            return "Checked out successfully"
        } else {
            return "List of all animals: \(id)"
        }
    }
    
    func addName(id: Int, kind: String) {
        let animal = Animal(id: id, kind: kind, checkedIn: false, attraction: "Cage")
        namesOfAnimals[id] = animal
    }
    
   
    func checkIn(id:Int, kind: String, checkedIn: Bool, attraction: String) -> String {
        if let name = namesOfAnimals[id] {
            name.checkedIn = true
            return "Success"
        } else {
            return "Failure"
        }
    }
   
    func askQuestionsTheZoo(id:Int) -> String {
        if let name = namesOfAnimals[id] {
            name.checkedIn = true
            return "Success"
        } else {
            return "Failure"
        }
    }
}


