//
//  TaskListView.swift
//  ToDoAppSelf
//
//  Created by Kalindu Agathisi on 2024-10-03.
//

import SwiftUI

struct TaskListView: View {
    @Binding var taskList: [String]
    var body: some View {
        List(taskList, id: \.self) {
            task in Text(task)
        }
    }
}

//#Preview {
//    TaskListView()
//}
