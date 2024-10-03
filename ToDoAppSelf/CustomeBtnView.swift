//
//  CustomeBtnView.swift
//  ToDoAppSelf
//
//  Created by Kalindu Agathisi on 2024-10-04.
//

import SwiftUI

struct CustomeBtnView: View {
    @Binding var taskList: [String]
    @Binding var task: String
    var body: some View {
        Button("Add Task") {
            // append the task to the list
            taskList.append(task)
            // clear the input field
            task = ""
        }
        .buttonStyle(.borderedProminent)
    }
}

//#Preview {
//    CustomeBtnView()
//}
