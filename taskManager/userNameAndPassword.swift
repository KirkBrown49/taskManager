//
//  userNameAndPassword.swift
//  taskManager
//
//  Created by Kirk Brown on 9/19/18.
//  Copyright © 2018 Kirk Brown. All rights reserved.
//

import Foundation
// the class will allow the user to enter their username and password.
class UserNameAndPassword {
    func nameAndPassWord(){
        userName()
        password()
        
    }
    func userName(){
        
    print("Please enter your username.")
        var userInput = readLine()
        
        while userInput == nil {
        print("please enter a username.")
            userInput = readLine()!
        }
    }
    
    func password(){
        print("please enter a password.")
        
        var userInput = readLine()
        
        while userInput == nil {
            print("please enter a username.")
            userInput = readLine()!
        }
    }
    func startApplication(){
        
    }
}
