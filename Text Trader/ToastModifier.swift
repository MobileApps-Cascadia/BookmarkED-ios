//
//  ToastModifier.swift
//  Text Trader
//
//  Created by Student Account on 5/20/22.
//  Copyright © 2022 Cascadia. All rights reserved.
//

import Foundation
import SwiftUI

struct ToastModifier: ViewModifier {
    @Binding var isShowing: Bool
    let duration: TimeInterval
    
    
    func body(content: Content) -> some View {
        ZStack{
            content
            if isShowing {
                VStack{
                    HStack{
                        Spacer()
                        Image(systemName: "checkmark")
                            .foregroundColor(Color("Light-shadow"))
                            .font(Font.system(size:15))
                        Text("Reset Link has been sent to your Email")
                            .font(.footnote)
                            .foregroundColor(Color("Light-shadow"))
                            .fontWeight(.bold)
                        
                        Spacer()
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
                    .shadow(radius: 5)
                    .cornerRadius(25)
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
                        withAnimation {
                            isShowing = false
                        }
                    }
                }
            }
        }
    }
}

extension View {
    func toast(isShowing: Binding<Bool>, duration: TimeInterval = 3) -> some
    View {
        modifier(ToastModifier(isShowing: isShowing, duration: duration))
    }
}
