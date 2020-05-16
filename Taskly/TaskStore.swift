//
//  TaskStore.swift
//  Taskly
//
//  Created by khaled mohamed on 5/15/20.
//  Copyright © 2020 khaled mohamed. All rights reserved.
//

import Foundation


class TaskStore {
    var tasks = [[TaskModel](), [TaskModel]()]
    
    //MARK: - AddTasks
    func addTask(_ task:TaskModel , at index:Int , isDone:Bool = false){
        let section = isDone ? 1 : 0
        tasks[section].insert(task, at: index)
    }
    
    //MARK: - RemoveTasks
    func removeTask(at index:Int, isDone:Bool = false) -> TaskModel {
        let section = isDone ? 1 : 0
        return tasks[section].remove(at: index)
    }
}
