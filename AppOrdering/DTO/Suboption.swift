//
//  Suboption.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - Suboption
struct Suboption: Codable {
    let id, extraOptionID: Int?
    let name: String?
    let price: Int?
    let image, sku: String?
    let rank: Int?
    let description: String?
    let max: Int?
    let enabled: Bool?
    let preselected: Bool?

    enum CodingKeys: String, CodingKey {
        case id
        case extraOptionID = "extra_option_id"
        case name, price, image, sku, rank, description, max
        case enabled
        case preselected
    }
}
