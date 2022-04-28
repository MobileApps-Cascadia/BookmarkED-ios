//
//  Signup.swift
//  Text Trader
//
//  Created by Student Account on 4/21/22.
//  Copyright © 2022 Cascadia. All rights reserved.
//

import SwiftUI

struct Signup: View {
    @State var username = ""
    @State var password = ""
    @State var confirmPassword = ""
   
    
    let gradient = Gradient(colors: [Color("Login-color-1"), Color("Login-color-2"), Color("Login-color-3"), Color("Login-color-4"), Color("Login-color-5"), Color("Login-color-6"), Color("Login-color-7")])
    
    
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: gradient, startPoint: .bottom, endPoint: .top))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipped()
                    .cornerRadius(200)
                    .padding(.bottom, 50)
                
                HStack(spacing:5){
                    Image(systemName: "person.fill")
                        .foregroundColor(Color("Light-shadow"))
                        .padding()
                
                    ZStack(alignment: .leading){
                
                    if username.isEmpty {
                        Text("Username")
                            .foregroundColor(Color.white.opacity(0.8))
                    }
                    TextField("", text: self.$username)
                        .padding()
                        .foregroundColor(.white)
                    }
                }
                Divider().background(Color.white)
                
                HStack(spacing:5){
               
                    Image(systemName: "lock.fill")
                        .foregroundColor(Color("Light-shadow"))
                        .padding()
                   
                
                ZStack(alignment: .leading){
                        if password.isEmpty {
                            Text("Password")
                                .foregroundColor(Color.white.opacity(0.8))
                        }
                        TextField("", text: self.$password)
                            .foregroundColor(Color.white)
                            .padding()
                }
                }
                Divider()
                    .background(Color.white)
        
                
                HStack(spacing:5){
               
                    Image(systemName: "lock.fill")
                        .foregroundColor(Color("Light-shadow"))
                        .padding()
                   
                
                ZStack(alignment: .leading){
                        if password.isEmpty {
                            Text("Confirm Password")
                                .foregroundColor(Color.white.opacity(0.8))
                        }
                        TextField("", text: self.$confirmPassword)
                            .foregroundColor(Color.white)
                            .padding()
                    
                }
                }
                Divider()
                    .background(Color.white)
                
    
                HStack {
                    Button(action: {}, label: {
                        Spacer()
                        
                        Text("REGISTER")
                            .fontWeight(.bold)
                        Spacer()
                            
                    })
                        .foregroundColor(Color.white.opacity(0.8))
                        .padding()
                        .background(Color("Login-button"))
                        .cornerRadius(10)
                        .padding()
                }
            }
            .padding(.horizontal)
            .padding()
        }
    }
}


struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}

