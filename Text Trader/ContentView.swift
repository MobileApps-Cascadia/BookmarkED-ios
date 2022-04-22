//
//  ContentView.swift
//  TextTrader-iOS-2022
//
//  Created by Student Account on 4/20/22.
//

import SwiftUI

struct ContentView: View {
    
    let gradient = Gradient(colors: [Color("Login-color-1"), Color("Login-color-2"), Color("Login-color-3"), Color("Login-color-4"), Color("Login-color-5"), Color("Login-color-6"), Color("Login-color-7")])
    
    var body: some View {
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
                    Text("Sign up")
                        .foregroundColor(.blue)
                        .onTapGesture {
                            
                        }
                }.padding(.bottom, 15)
                    .padding(.top, 5)
            }
            .padding(.horizontal)
            .padding()

        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
