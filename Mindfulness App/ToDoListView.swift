//
//  ToDoListView.swift
//  Mindfulness App
//
//  Created by scholar on 6/15/23.
//

import SwiftUI

struct ToDoListView: View {
        
        
        
        @Environment(\.managedObjectContext) var context
        
        @FetchRequest(
            entity: ToDo.entity(),
            sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
        
        var toDoItems: FetchedResults<ToDo>
        
        @State private var showNewTask = false
        
        var body: some View {
            ZStack{
                Color(red: 0.675, green: 0.694, blue: 0.839)
                    .ignoresSafeArea()
                VStack {
                    
                    HStack {
                        Text("To Do List")
                            .font(.system(size: 40))
                            .fontWeight(.black)
                            .foregroundColor(Color(red: 0.36, green: 0.4, blue: 0.68))
                        
                        
                        
                        
                        Spacer()
                        
                        Button(action: {
                            self.showNewTask = true
                        }) {
                            Text("+")
                                .font(.largeTitle)
                        }
                        
                        
                    }
                    
                    
                    .padding()
                    
                    Spacer()
                    
                    
                    
                    List {
                        Color(red: 0.675, green: 0.694, blue: 0.839)
                            .ignoresSafeArea()
                        
                        ForEach (toDoItems) { toDoItem in
                            if toDoItem.isImportant == true {
                                Text("‼️" + (toDoItem.title ?? "No title"))
                            } else {
                                Text(toDoItem.title ?? "No title")
                            }
                            
                        }
                        .onDelete(perform: deleteTask)
                    }
                    
                    .listStyle(.plain)
                    .animation(.easeOut, value: showNewTask)
                }
                
                
                
                
                
                if showNewTask {
                    NewToDoView(showNewTask: $showNewTask, title: "", isImportant: false)
                        .transition(.move(edge: .bottom))
                        .animation(.easeOut, value: showNewTask)
                }
                
            }
        }
        
        private func deleteTask(offsets: IndexSet) {
            withAnimation {
                offsets.map { toDoItems[$0] }.forEach(context.delete)
                
                do {
                    try context.save()
                } catch {
                    print(error)
                }
            }
            
        }
        
        
    }
    
    
    struct ToDoListView_Previews: PreviewProvider {
        static var previews: some View {
            ToDoListView()
        }
    }

