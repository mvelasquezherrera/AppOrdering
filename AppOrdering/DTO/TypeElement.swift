//
//  TypeElement.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - TypeElement
struct TypeElement: Codable {
    let id: Int?
    let name: String?
    let image, description: String?
    let enabled: Bool?
    let createdAt, updatedAt: String?

    enum CodingKeys: String, CodingKey {
        case id, name, image, description, enabled
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
}
