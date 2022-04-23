//
//  Controller.swift
//  Text Trader
//
//  Created by ROBERT BRONSON on 4/22/22.
//  Copyright © 2022 Cascadia. All rights reserved.
//

import Foundation

struct Book: Codable, Identifiable {
    let id = UUID()
    var title: String
    var owner: Int //should this be the owner name or owner id ?
}

class Controller: ObservableObject{
    
    func addBook(){
        
    }
    func registerUser(){
        
    }
    func login(){
        
    }
    func getUserInfo(){
        
    }
    func getBook(){
        
    }
    func getBooks(completion:@escaping ([Book]) -> ()){
        guard let url = URL(string: "http://texttrader.com/api/books") else {
            print("Invalid URL")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            let books = try! JSONDecoder().decode([Book].self, from: data!)
            print(books)
            DispatchQueue.main.async {
                completion(books)
            }
        }.resume()
    }
    func editBook(){
        
    }
    func updateUserInfo(){
        
    }
    func deleteBook(){
        
    }
    func deleteUser(){
        
    }
    
}
