//
//  Menu.swift
//  taskManager
//
//  Created by Kirk Brown on 9/17/18.
//  Copyright © 2018 Kirk Brown. All rights reserved.
//

import Foundation
class Menu {
    let application = Manager()
    
    var shouldQuit = false // when this is true , we should quit running the task manager
    
    func go() {
        // this function will handle making the menu run. it will display the menu and take user input until the user wishes to quit the application
        while !shouldQuit {
            displayMenu()
            var input = getInput()
            while validateInput(input) == false {
                //display the menu
                displayMenu()
                //get new input
                input = getInput()
            }
               handleInput(input)
            
        }
    }
    
    func validateInput(_ input:String) -> Bool {
        let validMenuOption = Array(1...8)
        guard let number = Int(input) else {
            return false
        }
        return validMenuOption.contains(number)
    }
    
    
    func displayMenu() {
        if shouldQuit == false {
            print("""
            Task Manager Menu
    1. Create new tasks.
    2.List of all tasks.(Completed and incomplete)
    3.Mark a task completed.
    4.Mark a completed task as incomplete.
    5.List of only incompleted tasks.
    6.List of only completed tasks.
    7.Delete a task.
    8.Exit the program.
    
        Please enter a number between 1 and 8
    """)
        } else {
            print("Menu Closed")
            shouldQuit = true
        }
        
        
        
    }
    
    func handleInput(_ input: String) {
        switch input {
        case "1":
            // call the add task function
            application.addTask()
        case "2":
            // call the listAllTask function
            application.listAllTask()
        case "3":
            // call the markCompleteTask function
            application.markCompleteTask()
        case "4":
           // call the markIncompleteTask function
            application.markIncompleteTask()
        case "5" :
            // call the completedTask function
            application.incompletedTask()
        case "6":
            // call the incompleteTask function
           application.completedTask()
        case "7":
            // call the deleteTask function
            application.deleteTask()
        case "8":
            quit()
            
            
        default:
            break
            
        }
        
    }
    func quit() {
        shouldQuit = true
        print("Thanks for using the application")
    }
    
    func getInput() -> String {
        
        var userInput = readLine()
        while userInput == nil || userInput == ""{
            print("please give a valid input")
            userInput = readLine()
        }
        return userInput!
    }
    
    
    
}
