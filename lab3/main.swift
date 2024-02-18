//
//  main.swift
//  lab3
//
//  Created by Sarvar Saidazov on 12.02.2024.
//

import Foundation



MAIN:while true {
    print("""
            Choose task:
            1)Задача No1: Студенческий журнал
            2)Задача No2: Управление задачами в списке дел
            0)exit
            """)
    let choice = readLine()
    switch (choice) {
    case "1":
        task1()
    case "2":
        task2()
    case "0":
        break MAIN
    default:
        continue
    }
}
