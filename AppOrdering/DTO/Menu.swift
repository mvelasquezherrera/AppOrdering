//
//  Menu.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - Menu
struct Menu: Codable {
    let id, businessID: Int?
    let name: String?
    let comment: String?
    let schedule: [Today]?
    let pickup, delivery, enabled, eatin: Bool?
    let curbside, driverThru: Bool?
    let scheduleRanges: String?
    let allProducts, useBusinessSchedule: Bool?
    let seatDelivery, cateringDelivery, cateringPickup: Bool?
    let products: [Product]?
    let businesses: [BusinessElement]?

    enum CodingKeys: String, CodingKey {
        case id
        case businessID = "business_id"
        case name, comment, schedule, pickup, delivery, enabled, eatin, curbside
        case driverThru = "driver_thru"
        case scheduleRanges = "schedule_ranges"
        case allProducts = "all_products"
        case useBusinessSchedule = "use_business_schedule"
        case seatDelivery = "seat_delivery"
        case cateringDelivery = "catering_delivery"
        case cateringPickup = "catering_pickup"
        case products, businesses
    }
}
