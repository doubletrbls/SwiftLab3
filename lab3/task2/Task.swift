//
//  Task.swift
//  lab3
//
//  Created by Sarvar Saidazov on 13.02.2024.
//

import Foundation

struct Task {
    var title:String = ""
    var description:String = ""
    var isCompleted:Bool = false
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
}
