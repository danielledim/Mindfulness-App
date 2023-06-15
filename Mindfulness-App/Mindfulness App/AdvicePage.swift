//
//  AdvicePage.swift
//  Mindfulness App
//
//  Created by Rosabel Tan on 6/13/23.
//

import SwiftUI

struct AdvicePage: View {
    var body: some View {NavigationView {
        NavigationStack {
            ZStack {
                Color(red: 0.675, green: 0.694, blue: 0.839)
                    .ignoresSafeArea()
            VStack {
                Text("Mindful Tips🪷")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                Image("advice")
                    .resizable()
                    .frame(width: 300.0, height: 300.0)
                    .cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                    
                    
            ScrollView{
                VStack {
                    Text("Tip #1: Get regular exercise. Just 30 minutes of walking every day can help boost your mood and improve your health.")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                            
                    Text("Tip #2: Eat healthy, regular meals and stay hydrated. A balanced diet and plenty of water can improve your energy and focus throughout the day")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                            
                    Text("Tip #3: Set goals and priorities.Try to be mindful of what you have accomplished at the end of the day, not what you have been unable to do.")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                    Text(" Tip #4: Make sleep a priority. Stick to a schedule, and make sure you’re getting enough sleep.")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.white)
                                .cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                    Text("Text #5: Practice gratitude. Remind yourself daily of things you are grateful for. Be specific. Write them down at night, or replay them in your mind.")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct AdvicePage_Previews: PreviewProvider {
    static var previews: some View {
        AdvicePage()
    }
}
