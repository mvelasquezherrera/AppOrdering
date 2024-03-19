//
//  Reviews.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - Reviews
struct Reviews: Codable {
    let quality, delivery, service, package: Int?
    let total: Int?
}
