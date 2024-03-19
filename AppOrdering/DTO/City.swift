//
//  City.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - City
struct City: Codable {
    let id: Int?
    let name: String?
    let countryID, administratorID: Int?
    let enabled: Bool?
    let country: Country?

    enum CodingKeys: String, CodingKey {
        case id, name
        case countryID = "country_id"
        case administratorID = "administrator_id"
        case enabled, country
    }
}
