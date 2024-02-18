//
//  Student.swift
//  lab3
//
//  Created by Sarvar Saidazov on 12.02.2024.
//

import Foundation

struct Student {
    var name:String = ""
    var surname:String = ""
    var averageGrade:Double = 0.0
    
    init(name: String, surname: String, averageGrade: Double) {
        self.name = name
        self.surname = surname
        self.averageGrade = averageGrade
    }
    
    var fullName: String {
        return self.name + " " + self.surname
    }

    func displayInfo() -> String {
        return String("Name: \(self.fullName) Average Grade: \(self.averageGrade)")
    }
    
}
