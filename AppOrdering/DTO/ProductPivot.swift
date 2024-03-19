//
//  ProductPivot.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - ProductPivot
struct ProductPivot: Codable {
    let menuID, productID: Int?

    enum CodingKeys: String, CodingKey {
        case menuID = "menu_id"
        case productID = "product_id"
    }
}
