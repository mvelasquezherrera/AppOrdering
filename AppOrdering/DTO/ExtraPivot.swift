//
//  ExtraPivot.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - ExtraPivot
struct ExtraPivot: Codable {
    let productID, extraID: Int?

    enum CodingKeys: String, CodingKey {
        case productID = "product_id"
        case extraID = "extra_id"
    }
}
