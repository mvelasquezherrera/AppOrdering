//
//  Offer.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - Offer
struct Offer: Codable {
    let id, businessID: Int?
    let name: String?
    let type, minimum, rateType, rate: Int?
    let start, end: String?
    let coupon: String?
    let limit: Int?
    let enabled: Bool?
    let image, description, label: String?
    let rank, conditionType, target: Int?
    let stackable, auto, offerPublic: Bool?
    let orderPriority, schedule, limitPerUser, userOrderCount: Int?
    let includeProductsWithOffer: Bool?
    let includeOptions: Bool?

    enum CodingKeys: String, CodingKey {
        case id
        case businessID = "business_id"
        case name, type, minimum
        case rateType = "rate_type"
        case rate, start, end, coupon, limit, enabled, image, description, label, rank
        case conditionType = "condition_type"
        case target
        case stackable, auto
        case offerPublic = "public"
        case orderPriority = "order_priority"
        case schedule
        case limitPerUser = "limit_per_user"
        case userOrderCount = "user_order_count"
        case includeProductsWithOffer = "include_products_with_offer"
        case includeOptions = "include_options"
    }
}
