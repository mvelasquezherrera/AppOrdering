//
//  BusinessDetailResult.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - BusinessDetailResult
struct BusinessDetailResult: Codable {
    let id: Int?
    let name, email, slug: String?
    let schedule: [Today]?
    let description, about: String?
    let logo, header: String?
    let phone, cellphone: String?
    let ownerID, cityID: Int?
    let address: String?
    let location: ResultLocation?
    let featured: Bool?
    let timezone, currency: String?
    let food, alcohol, groceries, laundry: Bool?
    let usePrinter: Bool?
    let minimum, deliveryPrice: Double?
    let alwaysDeliver: Bool?
    let taxType, tax: Double?
    let deliveryTime, pickupTime: String?
    let serviceFee, fixedUsageFee, percentageUsageFee, orderDefaultPriority: Double?
    let cancelOrderAfterMinutes: Double?
    let enabled: Bool?
    let scheduleRanges: String?
    let deliveryTaxRate, deliveryTaxType: Double?
    let menusCount, availableMenusCount, menusSharedCount, availableMenusSharedCount: Double?
    let configs: [Config]?
    let checkoutfields: [String: Checkoutfield]?
    let reviews: Reviews?
    let resultOpen: Bool?
    let favorite: Bool?
    let deliveryName: String?
    let today: Today?
    let lazyLoadProductsRecommended: Bool?
    let availableProductsCount: Int?
    let validService: Bool?
    let numZones: Int?
    let types: [TypeElement]?
    let owners: [Owner]?
    let city: City?
    let extras: [Extra]?
    let paymethods: [PaymethodElement]?
    let menus: [Menu]?
    let categories: [Category]?
    let zones: [ZoneDetail]?
    let offers: [Offer]?

    enum CodingKeys: String, CodingKey {
        case id, name, email, slug, schedule, description, about, logo, header, phone, cellphone
        case ownerID = "owner_id"
        case cityID = "city_id"
        case address
        case location, featured, timezone, currency, food, alcohol, groceries, laundry, favorite
        case usePrinter = "use_printer"
        case minimum
        case deliveryPrice = "delivery_price"
        case alwaysDeliver = "always_deliver"
        case taxType = "tax_type"
        case tax
        case deliveryTime = "delivery_time"
        case pickupTime = "pickup_time"
        case serviceFee = "service_fee"
        case fixedUsageFee = "fixed_usage_fee"
        case percentageUsageFee = "percentage_usage_fee"
        case orderDefaultPriority = "order_default_priority"
        case cancelOrderAfterMinutes = "cancel_order_after_minutes"
        case enabled
        case scheduleRanges = "schedule_ranges"
        case deliveryTaxRate = "delivery_tax_rate"
        case deliveryTaxType = "delivery_tax_type"
        case menusCount = "menus_count"
        case availableMenusCount = "available_menus_count"
        case menusSharedCount = "menus_shared_count"
        case availableMenusSharedCount = "available_menus_shared_count"
        case configs, checkoutfields, reviews
        case resultOpen = "open"
        case deliveryName = "delivery_name"
        case today
        case lazyLoadProductsRecommended = "lazy_load_products_recommended"
        case availableProductsCount = "available_products_count"
        case validService = "valid_service"
        case numZones = "num_zones"
        case types, owners, city, extras, paymethods, menus
        case categories
        case zones, offers
    }
}
