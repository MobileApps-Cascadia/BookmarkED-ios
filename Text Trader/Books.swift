//
//  Books.swift
//  Text Trader
//
//  Created by Student Account on 5/23/22.
//  Copyright © 2022 Cascadia. All rights reserved.
//

import Foundation
import SwiftUI

struct Books: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let author: String
    let edition: String
    let isbn: String
    let uploadDate: String
}

struct BookList {
    
    static let available = [
        Books(imageName: "Book1",
              title: "Campbell Biology",
              author: "Urry, Lisa - Cain, Michael - Wasserman, Steven - Minorsky, Peter - Reece, Jane",
              edition: "11",
              isbn: "0134093410",
              uploadDate: "February 15, 2022"
             ),
        Books(imageName: "Book2",
              title: "Principles of Economics",
              author: "Mankiw, N. Gregory",
              edition: "06",
              isbn: "0538453052",
              uploadDate: "March 20, 2022"
             ),
        Books(imageName: "Book3",
              title: "The Art of Public Speaking",
              author: "Lucas, Stephen",
              edition: "12",
              isbn: "0073523917",
              uploadDate: "April 8, 2022"
             ),
        Books(imageName: "Book4",
              title: "Diagnostic and Statistical Manual of Mental Disorders",
              author: "American Psychiatric Association",
              edition: "05",
              isbn: "0890425558",
              uploadDate: "May 25, 2022"
             )
    ]
}
