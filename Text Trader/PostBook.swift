//
//  PostBook.swift
//  Text Trader
//
//  Created by Student Account on 5/21/22.
//  Copyright © 2022 Cascadia. All rights reserved.
//

import SwiftUI

struct PostBook: View {
    
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    
    let gradient = Gradient(colors: [Color("Login-color-1"), Color("Login-color-2"), Color("Login-color-3"), Color("Login-color-4"), Color("Login-color-5"), Color("Login-color-6"), Color("Login-color-7")])
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: gradient, startPoint: .bottom, endPoint: .top))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing:0){
                HStack {
                    NavigationLink(destination: {}, label: {
                        ZStack {
                            Image("Logo2")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 30)
                                .offset(x:15)
                        }
                    })
                    
                    Spacer()
                    
                    NavigationLink(destination: Home(), label: {
                        ZStack {
                            Image(systemName: "xmark")
                                .font(.title)
                                .foregroundColor(Color("Light-shadow"))
                                .offset(x:-20)
                                .hiddenNavigationBarStyle()
                        }
                    })
                }
                .offset(y: 20)
                Spacer()
            }
            
            
            VStack {
                HStack(spacing:5){
                    
                    
                    ZStack(alignment: .leading){
                        
                        if email.isEmpty {
                            Text("Title")
                                .foregroundColor(Color.white.opacity(0.8))
                        }
                        TextField("", text: self.$email)
                            .padding()
                            .foregroundColor(.white)
                    }
                    
                }
                
                Divider().background(Color.white)
                
                HStack(spacing:5){
                    
                    ZStack(alignment: .leading){
                        if password.isEmpty {
                            Text("Author")
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
                    
                    ZStack(alignment: .leading){
                        if password.isEmpty {
                            Text("Edition")
                                .foregroundColor(Color.white.opacity(0.8))
                        }
                        TextField("", text: self.$confirmPassword)
                            .foregroundColor(Color.white)
                            .padding()
                        
                    }
                }
                Divider()
                    .background(Color.white)
                
                
                HStack(spacing:5){
                    
                    ZStack(alignment: .leading){
                        if password.isEmpty {
                            Text("ISBN")
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
                    NavigationLink(destination: Home(), label: {
                        Spacer()
                        
                        Text("SUBMIT")
                            .fontWeight(.bold)
                        Spacer()
                        
                    })
                    
                        .foregroundColor(Color.white.opacity(0.8))
                        .padding()
                        .background(Color("Login-button"))
                        .cornerRadius(10)
                        .padding()
                }
                .padding()
                
            }
            .padding(.horizontal)
            .padding()
            
            .offset(y: -10)
            .hiddenNavigationBarStyle()
            
        }
    }
}

struct PostBook_Previews: PreviewProvider {
    static var previews: some View {
        PostBook()
    }
}
