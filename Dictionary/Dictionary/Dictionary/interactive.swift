//
//  interactive.swift
//  Dictionary
//
//  Created by Rose Bailey on 10/11/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation
class Interactive {
    private var done: Bool = false
    private var currentInPut: String = "checkin"
    private var io = Io()
    private var library = Library()
//    private var checkIn = checkIn()
//    private var checkOut = checkOut()
    
    func go(){
        
        while !done {
            
            //Ask the user for input right here.
            io.writeMessage("\nInput?")
            currentInPut = io.getInput()
            let selection = currentInPut
            switch selection{
            
            case "Help":
                print("\nFor help and other information here is a list of available actions for the library: \n\nList: There is a lists the books currently existing in the library. \nListavaible:")
            
            case "q":
                done = true
                
            case "co":
                startCheckOut()
                
            case "ci":
                startCheckIn()
                
            case "ab":
                askQuestionsThenAddBook()
                
            default:
                print("Inter a valid choice")
            }
        }
        print ("Exiting....")
        
        return
    }
    
    func startCheckIn() {
        
        // ask what book to check in (by id)
        print("Enter the id you want to check in: ")
        if let idToCheckIn = Int(io.getInput()) {
        
        // call library.checkIn(id)
        print(library.checkIn(id: idToCheckIn))
            
        } else {
            print("Invalid input")
        }
    }
    
    func startCheckOut() {
        
        // ask what book to check out (by id)
        print("Check out a book by id")
        if let idToCheckOut = Int(io.getInput()){
            
        print(library.checkOut(id: idToCheckOut))
        
        }else{
            print("Invalid input")
        }
        
    }
    
    func askQuestionsThenAddBook() {
        print("What is the id of the book to add?")
        currentInPut = io.getInput()
        let id: Int = Int(currentInPut) ?? 0
        
        print("What is the title of the book to add?")
        let title = io.getInput()
        
        library.addBook(id: id, title: title)
        
    }
}




