//
//  Result.swift
//  BucketList
//
//  Created by Patrik Cesnek on 13/10/2020.
//

import Foundation

struct Result: Codable {
    let query : Query
}

struct Query: Codable {
    let pages: [Int: Page]
}

struct Page: Codable, Comparable {
    let pageId: Int
    let title: String
    let terms: [String: [String]]?
    
    var description: String {
        terms?["description"]?.first ?? "No further information"
    }
    
    static func < (lhs: Page, rhs: Page) -> Bool {
        lhs.title < rhs.title
    }
}
