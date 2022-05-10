//
//  Book.swift
//  Text Trader
//
//  Created by ROBERT BRONSON on 5/9/22.
//  Copyright © 2022 Cascadia. All rights reserved.
//

import SwiftUI

class Book: Codable, Identifiable {
    
    let id = UUID()
    let title: String
    let author: String
    let isbn: String
    let price: Decimal
}

