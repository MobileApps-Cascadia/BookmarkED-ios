//
//  ViewModifiers.swift
//  Text Trader
//
//  Created by Student Account on 5/17/22.
//  Copyright © 2022 Cascadia. All rights reserved.
//

import Foundation
import SwiftUI

struct HiddenNavigationBar: ViewModifier {
    func body(content: Content) -> some View {
        content
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
    }
}

extension View {
    func hiddenNavigationBarStyle() -> some View {
        modifier( HiddenNavigationBar() )
    }
}
