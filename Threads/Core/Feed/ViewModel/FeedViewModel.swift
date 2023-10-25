//
//  FeedViewModel.swift
//  Threads
//
//  Created by Kaan Tan Karabulut on 13.11.2023.
//

import Foundation

@MainActor
class FeedViewModel: ObservableObject {
    @Published var threads = [Thread]()

    init() {
        Task { try await self.fetchThreads() }
    }

    func fetchThreads() async throws {
        threads = try await ThreadService.fetchThreads()
        try await fetchUserDataForThreads()
    }

    private func fetchUserDataForThreads() async throws {
        for i in 0 ..< threads.count {
            let thread = threads[i]
            let ownerUid = thread.ownerUid

            let threadUser = try await UserService.fetchUser(withUid: ownerUid)

            threads[i].user = threadUser
        }
    }
}
