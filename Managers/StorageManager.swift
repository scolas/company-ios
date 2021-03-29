//
//  StorageManager.swift
//  Reps
//
//  Created by Scott Colas on 3/28/21.
//

import Foundation
import FirebaseStorage

final class StorageManager{
    static let shared = StorageManager()
    
    private init() {}
    
    let storage = Storage.storage()
}
