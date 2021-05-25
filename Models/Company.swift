//
//  Company.swift
//  Reps
//
//  Created by Scott Colas on 5/14/21.
//

import Foundation

struct Company: Codable{
    let id: String
    let companyName: String
    let companyWebsite: String
    let companyPhone: String
    let username: String
    let password: String
    let email: String
    let createDate: String
    let postUrlString: String

    /*var date: Date {
        guard let date = DateFormatter.formatter.date(from: postedDate) else { fatalError() }
        return date
    }*/

 
}
