//
//  manager.swift
//  taskManager
//
//  Created by Kirk Brown on 9/17/18.
//  Copyright © 2018 Kirk Brown. All rights reserved.
//

import Foundation
class Manager {
    var taskArray: [TaskManager] = [TaskManager(task:"Get out of bed", priority: 4),TaskManager(task: "GO to bed", priority: 5)]// create an array to put more tasks in
    
    func addTask() {// allow the user to add a new task
        print("Please enter a task you would like to add.")
        var addedTask = readLine()
        
        while addedTask == nil || addedTask == "" {
            print("invalid task. Please enter a task ")
            addedTask = readLine()
        }
        let newTask = TaskManager(task: addedTask!, priority: 4)
        taskArray.append(newTask)
    }
    func deleteTask() { // allows the user to remove a task title that they choose.
        for index in 0..<taskArray.count {
            print("\(index). \(taskArray[index].task)")
        }
        print("Please enter the number of the task you want to remove:")
        
        var userInput = Int(readLine()!)// user will be able to enter a int for their selection, so they can enter an int instead a string for the whole task
        let validTaskIndex = Array(0..<taskArray.count)
        
        //check to make sure input is not nil and the number enterd is not beyond the index of our array
        while userInput == nil || !validTaskIndex.contains(userInput!) {
            print("Invalid Input. Please enter a usable index.")
            userInput = Int(readLine()!)
        }
        taskArray.remove(at: userInput!)// removes the task at the user's input
    }
    
    func listAllTask() {
        // shows all task
        print(completedTask(),incompletedTask())
        
        
        
        
        
        
    }
    
    func markCompleteTask() {
        //loop through our game array and print index and title if game is available to be checked out
        for index in 0..<taskArray.count {
            // since checkedIn is set to true the code will only show the games that are checked out
            if taskArray[index].completion == true {
                print("\(index). \(taskArray[index].task)")
            }
        }
        
        print("Please enter the index of the the task you wish to complete")
        var userInput = Int(readLine()!)
        while userInput == nil {
            print("Invalid Input. Please enter a usable index.")
            userInput = Int(readLine()!)
        }
        if userInput != taskArray.count {
            print("Please select a task within the given selection.")
        }
        
        
        // change the checkedIn value of our game element at the index provided by the user
        taskArray[userInput!].completion = false
        
        //use calendar to add time and establish due date
        let currentCalendar = Calendar.current
        
        let dueDate = currentCalendar.date(byAdding: .day,value: 2,to: Date())
        taskArray[userInput!].dueDate = dueDate
        
        //use dateFormtter to print out date as a readable string for the user
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        print("The task is to be done by \(dateFormatter.string(from: dueDate!))")
    }
    
    func markIncompleteTask() {
        for index in 0..<taskArray.count {
            
            // since completion is false it will only marked incomplete task
            if taskArray[index].completion == false {
                print("\(index). \(taskArray[index].task)")
                
            }
        }
        
        print("Please enter the index of the task you wish to mark incomplete")
        var userInput = Int(readLine()!) // allows the user to select a int to pick the task
        
        //the user will prompted to enter a valid int
        while userInput == nil {
            print("Invalid input. Please enter a usable index.")
            userInput = Int(readLine()!)
            
        }
        
        // if the task has been checked incomplete tell the user that the user will the task is incomplete
        taskArray[userInput!].completion = true
        
        taskArray[userInput!].dueDate = nil
        print("Your task has been marked incomplete")
        
    }
    func incompletedTask() {
        for task in taskArray {
            if task.completion{
                print(task.task)
                
            }
            
            if let dueDate = task.dueDate {
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "MM/dd/yyyy"
                print("The task \(task.task) is to be done by \(dateFormatter.string(from: dueDate))")
            }
            
        }
        
    }
    
    func completedTask() {// tells the users if a game is unavailable, they know when they can check it out
        for task in taskArray {
            if !task.completion {// if the task is completed it will show the task and due date
                print(task.task)
                //shows the date that the game is due
                if let dueDate = task.dueDate {
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "MM/dd/yyyy"
                    print("\(task.task) was completed on: \(dateFormatter.string(from: dueDate))")
                }
            }
        }
    }
    
    func easterEggCharacterPic() {
        print("you have selected a invalid option")
        print("Would you like to see something cool? Y/N")
        var easterEggTime = readLine()!.uppercased()
        var easter = true
        while easterEggTime != "Y" && easterEggTime != "N" {
            print("Would you like to hear a joke? Y/N")
            easterEggTime = readLine()!
        }
        
        if easterEggTime == "N" {
        easter == false
        }
        
        while easterEggTime == "Y"{
            print("""
      You clicked on this easter egg for no reason. Sorry if that's not funny, I'm not a joker.
     
""")
            
        }
        
        
        
        
    }
    
    func priorityTask(){
    
    
   
        
        
        
        }
    


func listByPriority(levels: inout Int)
{
    var counter = 0
    repeat
    {
        for _ in taskArray
        {
            if taskArray[counter].priority == levels
            {
                print(taskArray[counter].task)
                counter += 1
            }
            levels -= 1
        }
    } while levels > 0
}


}
