//
//  Controller.swift
//  Text Trader
//
//  Created by ROBERT BRONSON on 4/22/22.
//  Copyright © 2022 Cascadia. All rights reserved.
//

import Foundation
import SwiftUI


class Controller: ObservableObject{
    @Published var books = [Book]()
    
    var baseURL = "https://mgmcevbvw4.execute-api.us-west-2.amazonaws.com/dev/"
    var testURL = "https://reqres.in/api/books"
    let apiKey = "JXtnQpcT1v5SW1WPq4IJ43sputm5xEr9Z29qsEh4"
    
    func addBook(username: String){
        
    }
    func register(username: String, password: String){
        guard let url = URL(string: baseURL + "register") else {
            print("Invalid URL")
            return
        }
//        URLSession.shared.
        
    }
    func login(username: String, password: String){
        guard let url = URL(string: baseURL + "login") else {
            print("Invalid URL")
            return
        }
        var request = URLRequest(url: url)
        request.setValue(apiKey, forHTTPHeaderField: "x-api-key")
//        URLSession.shared.
        
    }
    func getUserInfo(username: String){
        // TODO: Stretch goal
    }
    func getBook(username: String){
        // TODO: Stretch goal
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
        // TODO: Stretch goal
    }
    func updateUserInfo(){
        // TODO: Stretch goal
    }
    func deleteBook(){
        // TODO: Stretch goal
    }
    func deleteUser(){
        // TODO: Stretch goal
    }
    func testFunc() -> String {
        return "This is working"
    }
    
}
