//
//  AboutUsPage.swift
//  Mindfulness App
//
//  Created by scholar on 6/15/23.
//

import SwiftUI

struct AboutUsPage: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.675, green: 0.694, blue: 0.839)
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        Text("About Us")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(red: 0.36, green: 0.4, blue: 0.68))
                        Image("Sreeja")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300.0)
                            .cornerRadius(15)
                        Text("Sreeja Chagantipati is a rising junior at Cypress High School in California. This is her first time participating in KWK. She wants to possibly major in bioengineering.")
                        
                        Image("Danielle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300.0)
                            .cornerRadius(15)
                        Text("Danielle DiMonte is a rising High School Senior at Riverside Brookfield High School in the Chicagoland Area. She has participated in KWK camps for the past three years. Danielle loves taking Computer Science courses at her school and is passionate about studying CS in college.")
                        
                        Image("Rosabel")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300.0)
                            .cornerRadius(15)
                        Text("Rosabel Tan is a rising junior in Chino Hills High School in California. This is her first year in KWK and has some experience using Python. Rosabel loves traveling and wants to possibly major in CS in the future.")
                        
                        Image("Rebecca")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300.0)
                            .cornerRadius(15)
                        Text("Rebecca Lee is a rising senior at Dublin High School in California. This is her first year with KWK and has no prior experience with coding. Rebecca loves the biomedical field and would like to major in Biology and minor in CS in the future.")
                        
                    }
                }
            }
        }
    }
}

struct AboutUsPage_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsPage()
    }
}
