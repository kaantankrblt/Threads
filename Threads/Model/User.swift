//
//  User.swift
//  Threads
//
//  Created by Kaan Tan Karabulut on 1.11.2023.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
