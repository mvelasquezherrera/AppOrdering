//
//  Checkoutfield.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - Checkoutfield
struct Checkoutfield: Codable {
    let name: String?
    let type: String?
    let checkoutfieldRequired, enabled: Bool?

    enum CodingKeys: String, CodingKey {
        case name, type
        case checkoutfieldRequired = "required"
        case enabled
    }
}
