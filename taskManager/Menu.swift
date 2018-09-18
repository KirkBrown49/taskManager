//
//  Menu.swift
//  taskManager
//
//  Created by Kirk Brown on 9/17/18.
//  Copyright © 2018 Kirk Brown. All rights reserved.
//

import Foundation



var shouldQuit = false // when this is true , we should quit running the video game library
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
     //   handleInput(input)
        
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
    3.List of only uncompleted tasks.
    4.List of only completed tasks.
    5.Mark a task as complete.
    6.Mark a completed task as incomplete.
    7.Delete a task.
    8.Exit the program.
    
        Please enter a number between 1 and 8
    """)
    } else {
        print("Menu Closed")
        shouldQuit = true
    }
    
    
    
}

//func handleInput(_ input: String) {
//    switch input {
//    case "1":
//
//    case "2":
//
//    case "3":
//
//    case "4":
//
//    case "5" :
//
//    case "6":
//
//    case "7":
//        print("")
//        printMenu()
//    case "8":
//        quit()
//
//
//    default:
//        break
//
//    }
//
//}
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



