//
//  PaymethodPaymethod.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - PaymethodPaymethod
struct PaymethodPaymethod: Codable {
    let id: Int?
    let name, gateway: String?
    let enabled: Bool?
    let allowWithZeroBalance: Bool?

    enum CodingKeys: String, CodingKey {
        case id, name, gateway, enabled
        case allowWithZeroBalance = "allow_with_zero_balance"
    }
}
