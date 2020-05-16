//
//  TasksViewController.swift
//  Taskly
//
//  Created by khaled mohamed on 5/15/20.
//  Copyright © 2020 khaled mohamed. All rights reserved.
//

import UIKit

class TasksViewController: UITableViewController {
    
    var taskStore = TaskStore()
    
    override func viewDidLoad() {
        
        let todoTasks = [TaskModel(taskname: "medetarian"),TaskModel(taskname: "running"),TaskModel(taskname: "buy cigarets")]
        let doneTasks = [TaskModel(taskname: "watch netflix")]
        
        taskStore.tasks = [todoTasks , doneTasks]
    }
    
    @IBAction func addTaskBarButtonItem(_ sender: Any) {
        
        //MARK: - Setting UP Alert Controller
        let alertController = UIAlertController(title: "Add Task", message: nil, preferredStyle: .alert)
        
        //MARK: - Set Up the Actions
        let addAction = UIAlertAction(title: "Add", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        //MARK: - Add The TextField
        alertController.addTextField { (textField) in
            textField.placeholder = "Enter Task Name..."
        }
        
        //MARK: - Add The Actions
        alertController.addAction(addAction)
        alertController.addAction(cancelAction)
        
        //MARK: - Present
        present(alertController, animated: true)
    }
    
}

//MARK: - TableViewDataSource
extension TasksViewController {
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 54
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "To-do" : "Done"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return taskStore.tasks.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskStore.tasks[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = taskStore.tasks[indexPath.section][indexPath.row].taskName
        return cell
    }
}
