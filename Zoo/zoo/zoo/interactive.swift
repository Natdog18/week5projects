//
//  interactive.swift
//  zoo
//
//  Created by Rose Bailey on 10/11/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation
class Interactive {
    
    private var done: Bool = false
    private var currentInPut: String = "q"
    private var io = Io()
    private var zoo = Zoo()
    private var name = ""
    private var namesOfAnimals = ""
    private var employee: Bool = false
    private var vistor: String = ""
    private var attraction: String = ""
    
    
    func go(){
        
        var isDone = false
        while !isDone {

            displayMenu()
        currentInPut = io.getInput()
        let selection = currentInPut
        switch selection{
            
        
        case "Help":
            print("\nFor help and other information here is a list of available actions for the Zoo: \n\nList: There is a lists the animals currently existing within their attractions. Please refer to the display menu. Thank you for visitng us, and have a wonderful time!\nListavaible:")
            
        case "q":
            isDone = true
            
        case "co":
            print("Input 1 if you are a male")
            print("Input 2 if you are a female")
            print("Input 3 if you are a employee")
            let checkOutID = Int(io.getInput())!
            print(zoo.checkOut(id: checkOutID))
            print("Thank you for being with us!")
            
        case "ci":
            print("Set started")
            let checkInID = Int(io.getInput())!
            print(zoo.checkIn(id: checkInID))
            print("Welcome")
            
        case "ab":
            print("Whats your question?")
        case "attractions":
            print("")
        case "p":
            zoo.printAnimals()
        case "e":
            zoo.printPerson()
        case "all":
            zoo.printAll()
        default:
            print("Inter a valid choice")
            
        
        }
        }
    
     print("Exiting....")
    return
    }
    
    func displayMenu() {
        
        print("")
        print("These are your options")
        print("Enter 'q' - Done")
        print("Enter 'co' - Check Out")
        print("Enter 'ci' - Check In")
        print("Enter 'Attraction' - Attraction")
        print("Enter 'p' - Print out Animals")
        print("Enter 'e' - Print Person")
        print("Enter 'all' - Print everything")
        print("")
        
        
}
}
