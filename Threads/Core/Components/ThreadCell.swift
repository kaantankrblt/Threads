//
//  ThreadCell.swift
//  Threads
//
//  Created by Kaan Tan Karabulut on 25.10.2023.
//

import SwiftUI

struct ThreadCell: View {
    let thread: Thread

    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                CircularProfileImageView(user: thread.user, size: .small)

                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(thread.user?.username ?? "")
                            .font(.footnote)
                            .fontWeight(.semibold)

                        Spacer()

                        Text(thread.timestamp.timestampString())
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray3))

                        Button {} label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(.darkGray))
                        }
                    }

                    Text(thread.caption)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)

                    HStack(spacing: 16) {
                        Button {} label: {
                            Image(systemName: "heart")
                        }

                        Button {} label: {
                            Image(systemName: "bubble.right")
                        }

                        Button {} label: {
                            Image(systemName: "arrow.rectanglepath")
                        }

                        Button {} label: {
                            Image(systemName: "paperplane")
                        }
                    }
                    .foregroundStyle(.black)
                    .padding(.vertical, 8)
                }
            }
            Divider()
        }
        .padding()
    }
}

struct ThreadCell_Previews: PreviewProvider {
    static var previews: some View {
        ThreadCell(thread: dev.thread)
    }
}
