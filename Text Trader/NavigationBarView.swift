//
//  NavigationBarView.swift
//  Text Trader
//
//  Created by Student Account on 5/21/22.
//  Copyright © 2022 Cascadia. All rights reserved.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PRPERTIES
    
    //MARK: - BODY
    var body: some View {
        
        HStack {
            Image("Logo2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 30)
                .offset(x:15)
            Spacer()
            
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "person")
                        .font(.title)
                        .foregroundColor(Color("Light-shadow"))
                        .offset(x:-15)
                }
            })
        }
    }
}

//MARK: - PREVIEW

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
