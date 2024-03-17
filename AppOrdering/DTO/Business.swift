//
//  Business.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 17/03/24.
//

import Foundation

// MARK: - Business
struct Business: Codable {
    let slug: String?
    let availableMenusCount: Int?
    let resultOpen: Bool?
    let zones: [Zone?]
    let favorite: Bool?
    let deliveryZone, availableMenusSharedCount: Int?
    let deliveryName: String?
    let today: Today?
    let schedule: [Today?]
    let name: String?
    let id, menusSharedCount, deliveryPrice: Int?
    let timezone: String?
    let menusCount: Int?
    let header: String?
    let distance: Int?
    let logo: String?
    let minimum: Int?

    enum CodingKeys: String, CodingKey {
        case slug
        case availableMenusCount = "available_menus_count"
        case resultOpen = "open"
        case zones, favorite
        case deliveryZone = "delivery_zone"
        case availableMenusSharedCount = "available_menus_shared_count"
        case deliveryName = "delivery_name"
        case today, schedule, name, id
        case menusSharedCount = "menus_shared_count"
        case deliveryPrice = "delivery_price"
        case timezone
        case menusCount = "menus_count"
        case header, distance, logo, minimum
    }
}
