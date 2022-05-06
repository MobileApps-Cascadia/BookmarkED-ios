//
//  ContentView.swift
//  Text Trader
//
//  Created by Student Account on 4/28/20.
//  Copyright © 2020 Cascadia. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let gradient = Gradient(colors: [Color("Login-color-1"), Color("Login-color-2"), Color("Login-color-3"), Color("Login-color-4"), Color("Login-color-5"), Color("Login-color-6"), Color("Login-color-7")])
    
    var body: some View {
        NavigationView{
            ZStack {
                Rectangle()
                    .fill(LinearGradient(gradient: gradient, startPoint: .bottom, endPoint: .top))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200)
                        .clipped()
                        .cornerRadius(200)
                        .padding(.bottom, 50)
                    
                    
                    HStack {
                        
                        Button(action: {}, label: {
                            
                            Spacer()
                            
                            Text("LOGIN")
                                .fontWeight(.bold)
                            Spacer()
                            
                            
                        })
                        
                            .foregroundColor(Color.white.opacity(0.8))
                            .padding()
                            .background(Color("Login-button"))
                            .cornerRadius(10)
                            .padding()
                        
                    }
                    
                    HStack {
                        Text("Don't have an account?")
                            .foregroundColor(.gray)
                        NavigationLink(destination: Signup(), label: {
                            Text("Sign up")
                                .foregroundColor(.blue)
                        })
                            .onTapGesture {
                                
                            }
                    }.padding(.bottom, 15)
                        .padding(.top, 5)
                }
                .padding(.horizontal)
                .padding()
                
                .offset(y: -60)
                
            }
            
        }
        
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
