//
//  Home.swift
//  Text Trader
//
//  Created by Student Account on 4/28/22.
//  Copyright © 2022 Cascadia. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    let gradient = Gradient(colors: [Color("Login-color-1"), Color("Login-color-2"), Color("Login-color-3"), Color("Login-color-4"), Color("Login-color-5"), Color("Login-color-6"), Color("Login-color-7")])
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: gradient, startPoint: .bottom, endPoint: .top))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            ZStack {
                Rectangle()
                    .fill(Color("Home-1"))
                    .frame(maxWidth: .infinity, maxHeight: 200)
                
                
                HStack {
                    VStack{
                        Text("Post a Book")
                            .font(.title)
                            .foregroundColor(Color("Home-font-color"))
                            .padding()
                        
                        Text("Click below to post a book to your schools  Book List")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("Home-font-color"))
                        
                        
                        
                        Button(action: {}, label: {
                            Spacer()
                            
                            Text("POST BOOK")
                                .foregroundColor(Color("Login-button"))
                            Spacer()
                            
                            
                        })
                            .foregroundColor(Color.white.opacity(0.8))
                            .padding()
                            .background(Color("Home-buttons"))
                            .frame(width: 200, height:50)
                            .cornerRadius(10)
                            .padding(.bottom)
                    }
                }
            }
            .offset(y:-180)
            
            
            ZStack {
                Rectangle()
                    .fill(Color("Home-2"))
                    .frame(maxWidth: .infinity, maxHeight: 200)
                
                
                HStack {
                    VStack{
                        Text("Find a Book")
                            .font(.title)
                            .foregroundColor(Color("Home-1"))
                            .padding(.top)
                        Text("Click below to access your schools Book List")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("Home-1"))
                            .padding(1)
                        
                        Button(action: {}, label: {
                            Spacer()
                            
                            Text("FIND BOOK")
                            
                                .foregroundColor(Color("Login-button"))
                            Spacer()
                            
                        })
                            .foregroundColor(Color.white.opacity(0.8))
                            .padding()
                            .background(Color("Home-buttons"))
                            .frame(width: 200, height:50)
                            .cornerRadius(10)
                            .padding()
                    }
                }
            }
            .offset(y:20)
            
            ZStack {
                Rectangle()
                    .fill(Color("Home-3"))
                    .frame(maxWidth: .infinity, maxHeight: 200)
                
                
                HStack {
                    VStack{
                        Text("Messanger")
                            .font(.title)
                            .foregroundColor(Color("Home-font-color"))
                            .padding(.top)
                        Text("Click below to access active message threads")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("Home-font-color"))
                            .padding(1)
                        
                        Button(action: {}, label: {
                            Spacer()
                            
                            Text("MESSAGES")
                                .foregroundColor(Color("Login-button"))
                            Spacer()
                            
                        })
                            .foregroundColor(Color.white.opacity(0.8))
                            .padding()
                            .background(Color("Home-buttons"))
                            .frame(width: 200, height:50)
                            .cornerRadius(10)
                            .padding()
                        
                    }
                    
                }
                
            }
            .offset(y:220)
        }
        
    }
}

struct Home_Preview: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
