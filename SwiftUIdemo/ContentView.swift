//
//  ContentView.swift
//  SwiftUIdemo
//
//  Created by qbuser on 13/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      
        VStack {
            MapView().frame(height: 200)
            CircleImage().offset(y: -50)
                .padding(.bottom, -10)
            
//            Image("profilePic").clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
//                .overlay(Circle().stroke( Color.gray))
//                .shadow(radius: 7)
                
            VStack(alignment: .leading) {
                Text("Sharon Peter").font(.title)
                    
                   // .padding()
                HStack {
                    Text(/*@START_MENU_TOKEN@*/"Mamoottil House"/*@END_MENU_TOKEN@*/)
                        .font(.subheadline)
                        .foregroundColor(Color(red: 0.0, green: 0.0, blue: 1.0, opacity: 9.0))
                    Spacer()
                    Text("Chakkaraparambu")
                        .font(.subheadline)
                        .foregroundColor(Color.red)
                    
                    
                      
                }
                Divider()
                Text("About")
                    .font(.title2)
                  
                
                Text("Personal Info")
                    .font(.subheadline)
                    .foregroundColor(Color.blue)
               
            }
            
           
            .padding()
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
