//
//  Extra.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - Extra
struct Extra: Codable {
    let id, businessID: Int?
    let name: String?
    let enabled: Bool?
    let rank: Int?
    let pivot: ExtraPivot?
    let options: [ExtraOption]?

    enum CodingKeys: String, CodingKey {
        case id
        case businessID = "business_id"
        case name, enabled
        case rank, pivot, options
    }
}
