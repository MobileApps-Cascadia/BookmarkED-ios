//
//  MyAccount.swift
//  Text Trader
//
//  Created by Student Account on 5/21/22.
//  Copyright © 2022 Cascadia. All rights reserved.
//

import SwiftUI

struct MyAccount: View {
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
        }
    }
}

struct MyAccount_Previews: PreviewProvider {
    static var previews: some View {
        MyAccount()
    }
}
