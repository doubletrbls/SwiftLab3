//
//  ToDoList.swift
//  lab3
//
//  Created by Sarvar Saidazov on 13.02.2024.
//

import Foundation

class ToDoList {
    var toDoList:[Task] = []
    
    func addTask() {
        print("Enter titile of the task")
        if let title = readLine(), !title.isEmpty {
            print("Enter description of the task")
            if let desc = readLine(), !desc.isEmpty {
                toDoList.append(Task(title: title, description: desc))
                print("Task has been added")
            } else {
                print("Wrong input.Try Again!")
            }
        } else {
            print("Wrong input.Try Again!")
        }
    }
    
    func removeTask() {
        guard !toDoList.isEmpty else {
            print("No tasks in journal")
            return
        }
        print("Enter title of the task to delete")
        guard let title = readLine(), !title.isEmpty else {
            print("Title is empty")
            return
        }
        
        
        guard toDoList.first(where: {$0.title == title}) != nil else {
            print("Task with title '\(title)' not found")
            return
        }
        
        toDoList.removeAll {$0.title == title}
        print("Task has been deleted")
        
    }
    
    func changeStateOfTask() {
        guard !toDoList.isEmpty else {
            print("No tasks in journal")
            return
        }
        
        print("Enter the title of the task you want to change:")
        guard let title = readLine(), !title.isEmpty else {
            print("Title is empty")
            return
        }
        
        if let index = toDoList.firstIndex(where: {$0.title == title}) {
            toDoList[index].isCompleted.toggle()
            print("State has been changed to \(toDoList[index].isCompleted)")
        } else {
            print("No such task")
        }
    }
    
    func displayInfo() {
        guard !toDoList.isEmpty else {
            print("No tasks in journal")
            return
        }
        print("ToDoList info(Title | Desc | State)")
            for (index, task) in toDoList.enumerated() {
                print("\(index + 1)) Title: \(task.title) | Description: \(task.description) | State: \(task.isCompleted ? "✅ Completed" : "❌ Incomplete")")
            }
    }
    
    func displayCompletedTasks() {
        toDoList.filter({$0.isCompleted == true }).enumerated().forEach {index,task in
            print("\(index + 1)) Title: \(task.title) | Description: \(task.description) | State: ✅ Completed")
        }
    }
    
    func displayIncompletedTasks() {
        toDoList.filter({$0.isCompleted == false }).enumerated().forEach {index,task in
            print("\(index + 1)) Title: \(task.title) | Description: \(task.description) | State: ❌ Incomplete")
        }
    }
    
    func removeCompletedTasks() {
        toDoList.removeAll(where: {$0.isCompleted == true})
        print("Deleted succesfully")
    }
    
    
    
    
}
