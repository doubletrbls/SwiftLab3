//
//  task2.swift
//  lab3
//
//  Created by Sarvar Saidazov on 13.02.2024.
//

import Foundation

var toDoList:ToDoList = ToDoList()

func task2() {
MAIN:
    while true {
        print("""
                Chose the action:
                1)Add task
                2)Remove task
                3)Display Info about tasks
                4)Change task state
                5)Display completed tasks
                6)Display incompleted tasks
                7)Delete completed tasks
                0)exit
                """)
        
    let choice = readLine()
        switch (choice) {
        case "1":
            toDoList.addTask()
        case "2":
            toDoList.removeTask()
        case "3":
            toDoList.displayInfo()
        case "4":
            toDoList.changeStateOfTask()
        case "5":
            toDoList.displayCompletedTasks()
        case "6":
            toDoList.displayIncompletedTasks()
        case "7":
            toDoList.removeCompletedTasks()
        case "0":
            break MAIN
        default:
            print("Try again!")
        }
    }
    
    
    
    
    
    
}






