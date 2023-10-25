//
//  ExploreViewModel.swift
//  Threads
//
//  Created by Kaan Tan Karabulut on 1.11.2023.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()

    init() {
        Task { try await self.fetchUsers() }
    }

    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUsers()
    }
}
