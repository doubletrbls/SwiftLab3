//
//  task1.swift
//  lab3
//
//  Created by Sarvar Saidazov on 12.02.2024.
//

import Foundation

var studentJournal: StudentJournal = StudentJournal()

func task1() {
MAIN:
    while true {
        print("""
                Chose the action:
                1)Add student
                2)Remove Student
                3)Display Info about students
                4)Avg Score overall students
                5)Highest avg score student
                0)exit
                """)
        
    let choice = readLine()
        switch (choice) {
        case "1":
            studentJournal.addStudent()
        case "2":
            studentJournal.removeStudent()
        case "3":
            studentJournal.displayJournal()
        case "4":
            studentJournal.findOverallAvgGrade()
        case "5":
            studentJournal.findMaxAvgScore()
        case "0":
            break MAIN
        default:
            print("Try again!")
        }
    }
}




