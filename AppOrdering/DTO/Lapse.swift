//
//  Lapse.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 17/03/24.
//

import Foundation

// MARK: - Lapse
struct Lapse: Codable {
    let close, lapseOpen: Close?

    enum CodingKeys: String, CodingKey {
        case close
        case lapseOpen = "open"
    }
}
