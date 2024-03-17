//
//  Today.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 17/03/24.
//

import Foundation

// MARK: - Today
struct Today: Codable {
    let enabled: Bool?
    let lapses: [Lapse?]
}
