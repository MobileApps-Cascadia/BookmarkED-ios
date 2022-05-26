//
//  Messenger.swift
//  Text Trader
//
//  Created by Student Account on 5/21/22.
//  Copyright © 2022 Cascadia. All rights reserved.
//

import SwiftUI

struct Messenger: View {
    
    let gradient = Gradient(colors: [Color("Login-color-1"), Color("Login-color-2"), Color("Login-color-3"), Color("Login-color-4"), Color("Login-color-5"), Color("Login-color-6"), Color("Login-color-7")])
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: gradient, startPoint: .bottom, endPoint: .top))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            
            
            VStack {
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
                .padding(.bottom, 40)
                .offset(y: 20)
                .hiddenNavigationBarStyle()
                Spacer()
                
                
                ScrollView {
                    ForEach(0..<10, id: \.self) { num in
                        VStack{
                            
                            HStack(spacing: 16){
                                
                                Image(systemName: "person.fill")                                .foregroundColor(Color("Light-shadow"))
                                    .font(.system(size: 32))
                                    .padding(8)
                                    .overlay(RoundedRectangle(cornerRadius: 44)
                                                .stroke(Color.white, lineWidth: 1)
                                    )
                                
                                VStack(alignment: .leading) {
                                    Text("Username")
                                        .foregroundColor(Color("Light-shadow"))
                                        .font(.system(size: 16, weight:.bold))
                                    
                                    Text("Messege sent to user")
                                        .foregroundColor(Color(.lightGray))
                                        .font(.system(size: 14))
                                    
                                }
                                Spacer()
                                
                                Text("22nd")
                                    .font(.system(size:14, weight: .semibold))
                                    .foregroundColor(Color("Light-shadow"))
                            }
                            Divider()
                                .background(Color.white)
                                .padding(.vertical, 8)
                        }
                    }
                    .padding()
                }
                .padding(5)
                
            }
        }
    }
}

struct Messenger_Previews: PreviewProvider {
    static var previews: some View {
        Messenger()
    }
}
