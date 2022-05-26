//
//  Help.swift
//  Text Trader
//
//  Created by Student Account on 5/23/22.
//  Copyright © 2022 Cascadia. All rights reserved.
//

import SwiftUI

struct Help: View {
    let gradient = Gradient(colors: [Color("Login-color-1"), Color("Login-color-2"), Color("Login-color-3"), Color("Login-color-4"), Color("Login-color-5"), Color("Login-color-6"), Color("Login-color-7")])
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: gradient, startPoint: .bottom, endPoint: .top))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing:0){
                HStack {
                    NavigationLink(destination: Login(), label: {
                        ZStack {
                            Image("Logo2")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 30)
                                .offset(x:15)
                        }
                    })
                    
                    Spacer()
                    
                    NavigationLink(destination: ForgotPassword(), label: {
                        ZStack {
                            Image(systemName: "xmark")
                                .font(.title)
                                .foregroundColor(Color("Light-shadow"))
                                .offset(x:-20)
                                .hiddenNavigationBarStyle()
                        }
                    })
                }
                
                VStack (alignment: .leading){
                    
                    Text("How can we help you?")
                        .foregroundColor(Color("Light-shadow"))
                        .fontWeight(.bold)
                        .font(Font.system(size: 30))
                        .padding(.top, 50)
                    
                    NavigationLink(destination: {}, label: {
                        Text("How to reset your password?")
                            .fontWeight(.semibold)
                            .foregroundColor(Color("Light-shadow"))
                            .padding(.vertical)
                    })
                    
                    NavigationLink(destination: {}, label: {
                        Text("How to post a book?")
                            .fontWeight(.semibold)
                            .foregroundColor(Color("Light-shadow"))
                            .padding(.vertical)
                    })
                    
                    NavigationLink(destination: {}, label: {
                        Text("How to find a book?")
                            .fontWeight(.semibold)
                            .foregroundColor(Color("Light-shadow"))
                            .padding(.vertical)
                    })
                    
                    NavigationLink(destination: {}, label: {
                        Text("How to send a message?")
                            .fontWeight(.semibold)
                            .foregroundColor(Color("Light-shadow"))
                            .padding(.vertical)
                    })
                    
                    Text("Legal")
                        .font(Font.system(size: 30))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Light-shadow"))
                        .padding(.vertical)
                    
                    NavigationLink(destination: {}, label: {
                        Text("Privacy Policy")
                            .fontWeight(.semibold)
                            .foregroundColor(Color("Light-shadow"))
                            .padding(.vertical)
                    })
                }
                .padding()
                VStack (alignment: .center){
                    
                    Text("Can't find what you need?")
                        .font(Font.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Light-shadow"))
                        .padding(.top, 50)
                }
                
                HStack{
                    NavigationLink(destination: {}, label: {
                        Text("Click here")
                            .fontWeight(.semibold)
                            .foregroundColor(.blue)
                    })
                    
                    Text("to contact us.")
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Light-shadow"))
                        .padding(.vertical)
                }
                
                Spacer()
            }
            .offset(y: 20)
            .hiddenNavigationBarStyle()
        }
    }
}


struct Help_Previews: PreviewProvider {
    static var previews: some View {
        Help()
    }
}
