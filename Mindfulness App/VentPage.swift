//
//  VentPage.swift
//  Mindfulness App
//
//  Created by Rosabel Tan on 6/13/23.
//

import SwiftUI

struct VentPage: View {
    @State private var fullText: String = "Write Here"
    var body: some View {
        ZStack {
            Color(red: 0.675, green: 0.694, blue: 0.839)
                .ignoresSafeArea()
        VStack {
            Text("Brain Dump 🧠")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color(red: 0.3607843137254902, green: 0.4, blue: 0.6823529411764706))
            TextEditor(text:$fullText)
                .padding()
                .foregroundColor(Color(red: 0.675, green: 0.694, blue: 0.839 ))
                .cornerRadius(30)
             
            }
        }
    }
}
struct VentPage_Previews: PreviewProvider {
    static var previews: some View {
        VentPage()
    }
}
