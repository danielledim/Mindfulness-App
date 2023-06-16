//
//  NewToDoView.swift
//  Mindfulness App
//
//  Created by scholar on 6/16/23.
//

import SwiftUI

struct NewToDoView: View {
   
    @State var title: String
    @State var isImportant: Bool
    @Binding var toDoItems: [ToDoItem]
    @Binding var showNewTask : Bool
    var body: some View {
            
            VStack {
                Color(red:0.67, green:0.69, blue:0.84)
                    .ignoresSafeArea()
                Text("Add a new task")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.36, green: 0.4, blue: 0.68))
                TextField("Enter the task description", text: $title)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .padding()
                Toggle(isOn: $isImportant) {
                    Text("Is it important?")
                }
                .padding()
                Button(action: {
                    self.addTask(title: self.title, isImportant: self.isImportant)
                    self.showNewTask = false
                }) {
                    Text("Add")
                        .foregroundColor(Color(red: 0.36, green: 0.4, blue: 0.68))
                }
                Color(red:0.67, green:0.69, blue:0.84)
                    .ignoresSafeArea()
                
                
            }
            
      
    }
    private func addTask(title: String, isImportant: Bool = false) {
        
        let task = ToDoItem(title: title, isImportant: isImportant)
        toDoItems.append(task)
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false, toDoItems: .constant([]), showNewTask: .constant(true))
    }
}

