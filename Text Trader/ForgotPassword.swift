//
//  ForgotPassword.swift
//  Text Trader
//
//  Created by Student Account on 5/5/22.
//  Copyright © 2022 Cascadia. All rights reserved.
//

import SwiftUI

struct ForgotPassword: View {
    @State private var isShowingToast = false
    @State var email = ""
    
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
                
                Text("Reset Password")
                    .foregroundColor(Color("Light-shadow"))
                    .fontWeight(.bold)
                    .font(Font.system(size: 40))
                    .toast(isShowing: $isShowingToast)
                HStack {
                    Text("To reset your password, please enter the email address you used to signup below and we'll sed a password reset link to your email.")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                    
                }.padding(.bottom, 15)
                    .padding(.top, 5)
                
                
                HStack(spacing:5){
                    Image(systemName: "envelope.fill")
                        .foregroundColor(Color("Light-shadow"))
                        .padding()
                    
                    ZStack(alignment: .leading){
                        
                        if email.isEmpty {
                            Text("Email Address")
                                .foregroundColor(Color.white.opacity(0.8))
                        }
                        TextField("", text: self.$email)
                            .padding()
                            .foregroundColor(.white)
                    }
                }
                Divider().background(Color.white)
                
                
                
                
                
                
                
                HStack {
                    Button(action: {}, label: {
                        Spacer()
                        
                        Text("SEND RESET LINK")
                            .fontWeight(.bold)
                            .onTapGesture {
                                isShowingToast = true
                            }
                        
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
            .offset(y: -10)
            .hiddenNavigationBarStyle()
        }
        
    }
}

struct ForgotPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPassword()
    }
}
