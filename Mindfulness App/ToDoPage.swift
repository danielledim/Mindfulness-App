//
//  ToDoPage.swift
//  Mindfulness App
//
//  Created by scholar on 6/15/23.
//

import SwiftUI

struct ToDoPage: View {
    
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    
    var body: some View {
    
        
            
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
                            .foregroundColor(Color(red: 0.36, green: 0.4, blue: 0.68))
                    }
                    .padding()
                }
                
                Spacer()
                
                if showNewTask {
                    NewToDoView(title : "", isImportant : false, toDoItems : $toDoItems, showNewTask : $showNewTask)
                }
                List {
                    ForEach (toDoItems) { toDoItem in
                        if toDoItem.isImportant == true {
                            Text("‼️" + toDoItem.title)
                        } else {
                            Text(toDoItem.title)
                        }
                        
                    }
                  
                    
                }
            
            
           
        }
        
        
    }
    
        
        
    }
    struct ToDoPage_Previews: PreviewProvider {
    static var previews: some View {
        ToDoPage()
    }
}
