//
//  DatabaseManager.swift
//  Reps
//
//  Created by Scott Colas on 3/28/21.
//

import Foundation
import FirebaseFirestore

final class DatabaseManager{
    static let shared = DatabaseManager()
    
    private init() {}
    
    let database = Firestore.firestore()
}
