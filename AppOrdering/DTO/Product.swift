//
//  Product.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - Product
struct Product: Codable {
    let id: Int?
    let name: String?
    let price: Double?
    let description: String?
    let images: String?
    let categoryID: Int?
    let inventoried: Bool?
    let quantity: Int?
    let featured, enabled, upselling, inOffer: Bool?
    let offerPrice: Double?
    let rank, offerRate, offerRateType: Double?
    let offerIncludeOptions: Bool?
    let hideSpecialInstructions: Bool?
    let minimumPerOrder, maximumPerOrder: Int?
    let type: String?
    let isHidden: Bool?
    let extras: [Extra]?
    let pivot: ProductPivot?
    let category: Category?
    
    enum CodingKeys: String, CodingKey {
        case id, name, price, description, images
        case categoryID = "category_id"
        case inventoried, quantity, featured, enabled, upselling
        case inOffer = "in_offer"
        case offerPrice = "offer_price"
        case rank
        case offerRate = "offer_rate"
        case offerRateType = "offer_rate_type"
        case offerIncludeOptions = "offer_include_options"
        case hideSpecialInstructions = "hide_special_instructions"
        case maximumPerOrder = "maximum_per_order"
        case minimumPerOrder = "minimum_per_order"
        case type
        case isHidden = "is_hidden"
        case extras, pivot, category
    }
}
