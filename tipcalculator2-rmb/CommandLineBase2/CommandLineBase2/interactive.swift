//
//  interactive.swift
//  CommandLineBase2
//
//  Created by Rose Bailey on 10/10/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation
class Interactive{
    private var done: Bool = false
    private var currentInPut: String = "q"
    private var io = Io()
    //var mealCost = ""
    //var tipPercentage = ""
    //var totalTip: Float = 0.0
    
    
    func go(){
        
        while !done {
            
            //Ask the user for input right here.
            io.writeMessage("\nEnter t to calculate tip?")
            currentInPut = io.getInput()
            
            if currentInPut == "q" {
                done = true
                
            } else if currentInPut == "t" {
                 calculateTip()
        
            
            } else {
                print("Inter a valid choice")
            }
        }
        print ("Exiting....")
        return
    }
    func calculateTip() {
        
                io.writeMessage("\n How much was the bill?")
            currentInPut = io.getInput()

        let billAmount: Double? = Double(currentInPut)
        
        io.writeMessage("\n What is percent of your tip?")
        currentInPut = io.getInput()

        let tipPercent: Double? = Double(currentInPut)
        
        let totalTip = ((tipPercent ?? 0.0) / 100)
       
        let totalTipAmount = ((billAmount ?? 0.0) * totalTip)
        print("amount of tip is: \(String(format:"%.02f", round(num:totalTipAmount)))")
        
        let finalBill = ((billAmount ?? 0.0) + totalTipAmount)
        
        print("amount of total bill: \(String(format:"%.02f", round(num:finalBill)))")
        
        
        
        io.writeMessage("\n Are you splitting the bill?")
        currentInPut = io.getInput()
        if currentInPut.uppercased() == "yes".uppercased(){
            io.writeMessage("\nHow many are splitting the bill?")
            currentInPut = io.getInput()
            let partyNum: Double? = Double(currentInPut)
            let partyNumCal = (partyNum ?? 0.0)
            let perTip = totalTipAmount/partyNumCal
            print("\nEveryone pays this amount: $\(String(format: "%.02f",round(num: perTip)))")
            let perAmount = finalBill / partyNumCal
            print("\n The amount everyone is paying is...: $\(String(format: "%.02f", round(num: perAmount)))")
           
        }else{
            print("Your total bill + tip is...")
        }
        
            
            
        }
        
        
    }
    
        func round(num: Double) -> Double {
            let tmp = (num*100).rounded(.toNearestOrAwayFromZero)
            return tmp/100
        }


        
