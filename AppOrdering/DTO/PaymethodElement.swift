//
//  PaymethodElement.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - PaymethodElement
struct PaymethodElement: Codable {
    let id, paymethodID, businessID: Int?
    let sandbox: Bool?
    let enabled: Bool?
    let createdAt, updatedAt: String?
    let paymethod: PaymethodPaymethod

    enum CodingKeys: String, CodingKey {
        case id
        case paymethodID = "paymethod_id"
        case businessID = "business_id"
        case sandbox
        case enabled
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case paymethod
    }
}
