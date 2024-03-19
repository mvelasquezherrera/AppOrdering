//
//  Zone.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 17/03/24.
//

import Foundation

// MARK: - Zone
struct Zone: Codable {
    let id: Int?
    let pivot: Pivot?
    let type, minimum, price: Int?
    let address: String?
    let enabled: Bool?
    let businessID: Int?
    let ownerType, name: String?
    let schedule: [Today?]

    enum CodingKeys: String, CodingKey {
        case id
        case pivot, type, minimum, price, address, enabled
        case businessID = "business_id"
        case ownerType = "owner_type"
        case name, schedule
    }
}
