//
//  User.swift
//  Text Trader
//
//  Created by ROBERT BRONSON on 5/9/22.
//  Copyright © 2022 Cascadia. All rights reserved.
//

import SwiftUI

class User: ObservableObject, Codable {
    
    enum CodingKeys: CodingKey {
        case username, name, email, token
    }
    
    @Published var username = ""
    @Published var name = ""
    @Published var email = ""
    @Published var token = ""

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(username, forKey: .username)
        try container.encode(name, forKey: .name)
        try container.encode(email, forKey: .email)
        try container.encode(token, forKey: .token)
    }
    
    init() {}
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        username = try container.decode(String.self, forKey: .username)
        name = try container.decode(String.self, forKey: .name)
        email = try container.decode(String.self, forKey: .email)
        token = try container.decode(String.self, forKey: .token)
    }
    
    
}
