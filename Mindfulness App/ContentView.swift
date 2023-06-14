//
//  ContentView.swift
//  Mindfulness App
//
//  Created by scholar on 6/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            ZStack{
                Color(red: 0.675, green: 0.694, blue: 0.839)
                    .ignoresSafeArea()
            VStack{
                Text("Welcome to ZenZone")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                Image("logo")
                    .resizable()
                    .frame(width: 150.0, height: 150.0)
                    .cornerRadius(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                    
                NavigationLink(destination: AdvicePage()) {Text ("Launch")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    }
                
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
