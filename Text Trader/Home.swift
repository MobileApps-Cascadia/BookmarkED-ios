//
//  Home.swift
//  Text Trader
//
//  Created by Student Account on 4/28/22.
//  Copyright © 2022 Cascadia. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView{
        VStack{
        ZStack {
            Rectangle()
                .fill(Color("Home-1"))
                .frame(maxWidth: .infinity, maxHeight: 230)
                
            
            HStack {
                VStack{
                    Text("Post a Book")
                        .font(.title)
                        .foregroundColor(Color("Home-font-color"))
                        .padding(.top)
                    Text("Click below to post a book to your schools  Book List")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("Home-font-color"))
                        .padding(1)
                    
                Button(action: {}, label: {
                    Spacer()
                    
                    Text("LOGIN")
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
            
        ZStack {
            Rectangle()
                .fill(Color("Home-2"))
                .frame(maxWidth: .infinity, maxHeight: 230)
                
            
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
                    
                    Text("LOGIN")
                        
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
            
        ZStack {
            Rectangle()
                .fill(Color("Home-3"))
                .frame(maxWidth: .infinity, maxHeight: 230)
                
            
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
                    
                    Text("LOGIN")
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
            }
        }
    }
}

struct Home_Preview: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
