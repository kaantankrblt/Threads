//
//  PreviewProvider.swift
//  Threads
//
//  Created by Kaan Tan Karabulut on 2.11.2023.
//

import Firebase
import Foundation
import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    let user = User(id: NSUUID().uuidString, fullname: "Max Verstappen", email: "max@gmail.com", username: "maxverstappen1")

    let thread = Thread(ownerUid: "123", caption: "this is a test thread", timestamp: Timestamp(), likes: 0)
}
