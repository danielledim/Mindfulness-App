//
//  ContentView.swift
//  Mindfulness App
//
//  Created by scholar on 6/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var randomInt = 0
    @State private var quote = ""
    func randomQuote(){
        randomInt = Int.random(in: 1..<5)
        if randomInt == 1{
            quote = "\"The sun himself is weak when he first rises, and gathers strength and courage as the day goes on\" - Charles Dickens"
        } else if randomInt == 2{
            quote = "\"All your dreams can come true if you have the courage to purse them\" - Walt Disney"
        } else if randomInt == 3 {
            quote = "\"It's hard to see things when you are too close. Take a step back and look\" - Bob Ross"
        } else if randomInt == 4{
            quote = "\"Shoot for the moon and if you miss you will still be among the stars\" - Les Brown"
        } else{
            quote = "\"Darkness cannot drive out darkness; only light can do that\" - Martin Luther King, Jr"
        }
    }
    var body: some View {
        
        VStack {
            
            NavigationStack {
                ZStack{
                    Color(red: 0.675, green: 0.694, blue: 0.839)
                        .ignoresSafeArea()
                    VStack{
                        VStack{
                            Text("Welcome to ")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .padding()
                            
                            Image("logo")
                                .resizable()
                                .frame(width: 150.0, height: 150.0)
                        }
                        
                                                
                        
                       
                        Button(action: randomQuote) {
                            Text("Generate Quote")
                                .font(.title)
                                .padding()
                                .fontWeight(.heavy)
                                .foregroundColor(Color(red: 0.5098039215686274, green: 0.5803921568627451, blue: 0.7686274509803922))
                        }
                        Text(quote)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .padding()
                            .font(.title)
                            .padding()
                                .background(Color(.systemGroupedBackground))
                                .cornerRadius(35)
                               .padding()
                        
                            

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
}
