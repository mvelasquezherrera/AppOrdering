//
//  Config.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - Config
struct Config: Codable {
    let id: Int?
    let key, value, name: String?
    let type: Int?
    let description: String?
    let enabled, configPublic: Bool?
    let configCategoryID: Int?
    let options: [ConfigOption]?
    let rank: Int?
    let image, video, moreInfo, supportURL: String?
    let protected, hidden: Bool?
    let dependencyKey, dependencyValue: String?
    let customizable, canReplacedByBusinesses, canReplacedBySites: Bool?

    enum CodingKeys: String, CodingKey {
        case id, key, value, name, type, description, enabled
        case configPublic = "public"
        case configCategoryID = "config_category_id"
        case options, rank, image, video
        case moreInfo = "more_info"
        case supportURL = "support_url"
        case protected, hidden
        case dependencyKey = "dependency_key"
        case dependencyValue = "dependency_value"
        case customizable
        case canReplacedByBusinesses = "can_replaced_by_businesses"
        case canReplacedBySites = "can_replaced_by_sites"
    }
}
