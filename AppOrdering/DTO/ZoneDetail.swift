//
//  ZoneDetail.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 18/03/24.
//

import Foundation

// MARK: - ZoneDetail
struct ZoneDetail: Codable {
    let id, businessID: Int?
    let name: String?
    let type: Int?
    let address: String?
    let dropdownOptionID: Int?
    let price, minimum: Double?
    let schedule: [Today?]
    let enabled: Bool?
    let scheduleRanges: String?
    let dataGeography: String?
    let ownerType: String?
    let businesses: [BusinessElement?]
    let pivot: ZonePivot?

    enum CodingKeys: String, CodingKey {
        case id
        case businessID = "business_id"
        case name, type, address
        case dropdownOptionID = "dropdown_option_id"
        case price, minimum, schedule, enabled
        case scheduleRanges = "schedule_ranges"
        case dataGeography = "data_geography"
        case ownerType = "owner_type"
        case businesses, pivot
    }
}
