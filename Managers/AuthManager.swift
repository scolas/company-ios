//
//  AuthManager.swift
//  Reps
//
//  Created by Scott Colas on 3/28/21.
//

import FirebaseAuth

import Foundation

final class AuthManager{
    static let shared = AuthManager()
    
    private init() {}
    
    let auth = Auth.auth()
    
    public var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    
    public func singIn(
        email: String,
        Password: String,
        completion: @escaping (Result<User, Error>) -> Void
    ){
    //completin tells the caller what the result was . so insted of passing bool. we pass <User or error>
    
    }
    
    
    public func singUp(
        email: String,
        username: String,
        Password: String,
        profilePicture: Data?,
        completion: @escaping (Result<User, Error>) -> Void
    ){
    //completin tells the caller what the result was . so insted of passing bool. we pass <User or error>
    
    }
    
    public func signOut(completion: @escaping (Bool) -> Void){
        
    }

}
