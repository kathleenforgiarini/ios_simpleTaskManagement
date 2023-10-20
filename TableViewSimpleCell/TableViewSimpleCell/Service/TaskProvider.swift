//
//  TaskProvider.swift
//  TableViewSimpleCell
//
//  Created by Kathleen on 2023-10-16.
//

import Foundation

class TaskProvider {
    static var all : [Task] = [Task]()
    
    static func generateMockData() {
        for i in 0..<100 {
            all.append(Task(description: "Task # \(i + 1)", instructions: "How to do task #\(i + 1)", done: false))
        }
    }
}
