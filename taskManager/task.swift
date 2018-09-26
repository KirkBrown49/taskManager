//
//  task.swift
//  taskManager
//
//  Created by Kirk Brown on 9/17/18.
//  Copyright © 2018 Kirk Brown. All rights reserved.
//

import Foundation

class TaskManager {
    let task : String
    var dueDate: Date?
    var completion: Bool = true
    var priority: Int
   
    
    init(task:String, priority: Int) {
    self.task = task
    self.priority = priority
    }
}
