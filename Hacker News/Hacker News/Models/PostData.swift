//
//  PostData.swift
//  Hacker News
//
//  Created by Hoang on 3.5.2020.
//  Copyright © 2020 Hoang. All rights reserved.
//

import Foundation

struct Results: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
