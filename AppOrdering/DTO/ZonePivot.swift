//
//  ZonePivot.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - ZonePivot
struct ZonePivot: Codable {
    let businessID, deliveryZoneID: Int?

    enum CodingKeys: String, CodingKey {
        case businessID = "business_id"
        case deliveryZoneID = "delivery_zone_id"
    }
}
