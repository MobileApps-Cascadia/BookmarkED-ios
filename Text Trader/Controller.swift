//
//  Controller.swift
//  Text Trader
//
//  Created by ROBERT BRONSON on 4/22/22.
//  Copyright © 2022 Cascadia. All rights reserved.
//

import Foundation
import SwiftUI

struct Response: Codable {
    var data: [Book]
}

class Controller: ObservableObject{
    
    @Published var books = [Book]()
    
    var baseURL = "https://mgmcevbvw4.execute-api.us-west-2.amazonaws.com/dev/"
    var testURL = "https://reqres.in/api/books"
    let apiKey = "JXtnQpcT1v5SW1WPq4IJ43sputm5xEr9Z29qsEh4"
    
    func addBook(username: String){
        
    }
    func register(user: User){
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
    @available(iOS 15.0, *)
    func getBooks() async -> [Book] {
        guard let url = URL(string: testURL) else {
            print("Invalid URL")
            return []
        }
        var request = URLRequest(url:url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "GET"
        do {
            let (potato, _) = try await URLSession.shared.data(from:url)
            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: potato){
                books = decodedResponse.data
                return books
            }
        } catch {
            print("Invalid Data")
        }
        return []
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
