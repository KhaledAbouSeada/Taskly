//
//  TaskModel.swift
//  Taskly
//
//  Created by khaled mohamed on 5/15/20.
//  Copyright © 2020 khaled mohamed. All rights reserved.
//

import Foundation

class TaskModel {
    
    var taskName:String
    var isDone:Bool
    
    init(taskname:String, isDone:Bool = false) {
        self.taskName = taskname
        self.isDone = isDone
    }
}
