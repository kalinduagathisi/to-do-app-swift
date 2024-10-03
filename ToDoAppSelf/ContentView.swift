//
//  ContentView.swift
//  ToDoAppSelf
//
//  Created by Kalindu Agathisi on 2024-10-03.
//

import SwiftUI

struct ContentView: View {
    @State var task: String = ""
    @State var taskList: [String] = []
    @State var taskIndex: Int = 0
    var body: some View {
        VStack {
            Text("To-Do-App")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            // Align second text to the left
            Text("Add Your Tasks Here")
                .font(.title2)
                .fontWeight(.semibold)
                .padding([.top], 20)  // Adds padding from the top
                .frame(maxWidth: .infinity, alignment: .leading)  // Aligns text to the left of the screen
                .padding()

            VStack {
                // user input field
                TextField("Task Name", text: $task)
                    .padding()

                Button("Add Task") {
                    // append the task to the list
                    taskList.append(task)
                    // clear the input field
                    task = ""
                }
                .buttonStyle(.borderedProminent)
            }

            VStack {

                // embed the custom view here
                TaskListView(taskList: $taskList)
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
