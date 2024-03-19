//
//  ResultLocation.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - ResultLocation
struct ResultLocation: Codable {
    let lat, lng: Double?
    let zipcode, zoom: Int?
}
