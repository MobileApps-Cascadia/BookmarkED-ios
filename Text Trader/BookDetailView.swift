//
//  BookDetailView.swift
//  Text Trader
//
//  Created by Student Account on 5/23/22.
//  Copyright © 2022 Cascadia. All rights reserved.
//

import SwiftUI

struct BookDetailView: View {
    
    var book: Books
    
    let gradient = Gradient(colors: [Color("Login-color-1"), Color("Login-color-2"), Color("Login-color-3"), Color("Login-color-4"), Color("Login-color-5"), Color("Login-color-6"), Color("Login-color-7")])
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: gradient, startPoint: .bottom, endPoint: .top))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing:0){
                HStack {
                    ZStack {
                        Image("Logo2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 30)
                            .offset(x:15)
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: FindBook(), label: {
                        ZStack {
                            Image(systemName: "xmark")
                                .font(.title)
                                .foregroundColor(Color("Light-shadow"))
                                .offset(x:-20)
                                .hiddenNavigationBarStyle()
                        }
                    })
                }
                .padding()
                
                Spacer()
                VStack(spacing: 15) {
                    
                    Image(book.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                        .padding(.vertical)
                    
                    Text(book.title)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Light-shadow"))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    
                    Text(book.author)
                        .foregroundColor(Color("Light-shadow"))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 2)
                    
                    Text("Edition: " + book.edition)
                        .foregroundColor(Color("Light-shadow"))
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 2)
                    
                    Text("ISBN: " + book.isbn)
                        .foregroundColor(Color("Light-shadow"))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 2)
                    
                    
                    
                    HStack {
                        NavigationLink(destination: Messenger(), label: {
                            Spacer()
                            
                            Text("MESSAGE")
                                .fontWeight(.bold)
                            Spacer()
                            
                        })
                        
                            .foregroundColor(Color.white.opacity(0.8))
                            .padding()
                            .background(Color("Login-button"))
                            .cornerRadius(10)
                            .padding()
                        Spacer()
                    }
                    .padding()
                    
                }
                
                .offset(y: 10)
                Spacer()
            }
            
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: BookList.available.first!)
    }
}
