//
//  Category.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - Category
struct Category: Codable {
    let id, businessID: Int?
    let name: String?
    let image: String?
    let rank: Double?
    let enabled: Bool?
    let products: [Product]?

    enum CodingKeys: String, CodingKey {
        case id
        case businessID = "business_id"
        case name, image, rank, enabled
        case products
    }
}
