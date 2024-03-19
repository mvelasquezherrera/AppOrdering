//
//  OwnerPivot.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - OwnerPivot
struct OwnerPivot: Codable {
    let businessID, ownerID: Int?

    enum CodingKeys: String, CodingKey {
        case businessID = "business_id"
        case ownerID = "owner_id"
    }
}
