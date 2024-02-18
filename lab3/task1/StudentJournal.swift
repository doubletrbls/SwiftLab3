//
//  StudentJournal.swift
//  lab3
//
//  Created by Sarvar Saidazov on 13.02.2024.
//

import Foundation

class StudentJournal {
    var studentJournal:[Student] = []
    
    func addStudent() {
        print("Enter Student name")
        if let name = readLine(), !name.isEmpty {
            print("Enter Student surname")
            if let surname = readLine(), !surname.isEmpty {
                print("Enter Student average grade")
                if let averageStr = readLine(), let averageGrade = Double(averageStr) {
                    studentJournal.append(Student(name: name, surname: surname, averageGrade: averageGrade))
                    print("Student has been added")
                } else {
                    print("Wrong input.Try Again!")
                }
            } else {
                print("Wrong input.Try Again")
            }
        } else {
            print("Wrong input.Try Again")
        }
    }
    
    func removeStudent() {
        print("Enter name and surname using space")
        if let fullName = readLine(), !fullName.isEmpty, studentJournal.contains(where: {$0.fullName == fullName}) {
            studentJournal.removeAll {$0.fullName == fullName}
            print("Student has beend deleted")
        } else {
            print("Wrong input.Tru again!Or no such Student")
        }
    }
    
    func displayJournal() {
        guard !studentJournal.isEmpty else {
            print("No students in the journal.")
            return
        }
        studentJournal.sort {
            student1,student2 in
            student1.averageGrade > student2.averageGrade
        }
        print("Students Information:")
        studentJournal.enumerated().forEach { index,student in
            print(String(index + 1) + ") " + student.displayInfo())
        }
    }
    
    func findOverallAvgGrade(){
        guard !studentJournal.isEmpty else {
            print("No students in the journal.")
            return
        }
        
        var totalGrades:Double = 0.0
        studentJournal.forEach { student in
            totalGrades+=student.averageGrade
        }
        let avgGrade = totalGrades / Double (studentJournal.count)
        print("Average score for all students in the journal \(avgGrade)")
    }
    
    func findMaxAvgScore() {
        guard !studentJournal.isEmpty else {
            print("No students in the journal.")
            return
        }
        let maxScoreStudent:Student = studentJournal.max(by: {
            $0.averageGrade < $1.averageGrade
        })!
        print("Students with highest avg score \(String(describing: maxScoreStudent.fullName)) has avg score \(String(describing: maxScoreStudent.averageGrade))")
    }
}
