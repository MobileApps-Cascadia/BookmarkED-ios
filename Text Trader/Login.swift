//
//  Login.swift
//  TextTrader-iOS-2022
//
//  Created by Student Account on 4/20/22.
//

import SwiftUI

struct Login: View {
    @State var username = ""
    @State var password = ""
    
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
                    .padding(.bottom, 75)
                
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
                
                HStack {
                    NavigationLink(destination: ForgotPassword(), label: {
                        Text("Forgot password?")
                            .foregroundColor(.gray)
                    })
                }.padding(.bottom, 15)
                    .padding(.top, 5)
                
                
                
                HStack {
                    
                    NavigationLink(destination: Home(), label: {
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
                }.padding(.bottom, 15)
                    .padding(.top, 5)
                
            }
            .padding(.horizontal)
            .padding()
            .offset(y: -10)
            .hiddenNavigationBarStyle()
        }
    }
    
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
